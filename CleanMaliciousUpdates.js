"use strict";
// Inspired by Opmet and Colin Bowern: http://serverfault.com/a/341318
// rewritten by KOLANICH
var shell = new ActiveXObject("WScript.Shell");
var fs = new ActiveXObject("Scripting.FileSystemObject");

function getFileText(fn) {//<reads text from file and puts into JS string
	fn = fs.OpenTextFile(shell.ExpandEnvironmentStrings(fn), 1, false);
	var text = fn.ReadAll();
	fn.Close();
	return text;
}
eval(getFileText("./libMSUpdater.js"));
var cfgText = getFileText("./config.js");//<loads config
eval("var config=" + cfgText); //Sorry, there is no JSON.parse in WSH, so we have to use evil
WScript.Echo("Current config:\n" + cfgText);


function detectMaliciousUpdates(updates){//<detects malicious updates in 2 ways: db of malicious kb and heuristics
	var  res={
		toUninstall:[],//<needed to be uninstalled
		toHide:[],//<needed to be hidden
		suspicious:[]//<suspicious updates, we need to check them manually
	};
	for (var i = 0, j; i < updates.length; i++) {
		var update = updates[i];
		var badUpdate = false;//<flag to exit loop
		for (var name in update.kbs) {//one update can have multiple kbs
			for (j = 0; j < config.blacklists.kbs.length; ++j) {//checks wheither kb number of update is within blacklist
				if (name == config.blacklists.kbs[j]) {
					if (update.installed) {
						res.toUninstall.push(update);
					}
					if (!update.hidden) {
						res.toHide.push(update);
					}
					badUpdate = true;
					break;
				}
			}
			if (badUpdate) break;
		}
		if (
			!badUpdate //<already blacklisted update, doesn't need to check
			&& (
				!update.cves.length //< update fixes security vulnerabilities, so it is not very probable that it is related to surveillance
				&& config.heuristics //< heuristics enabled
			)
		) {
			for (var prop in config.blacklists.keywords) {//enumerating blacklists, each blacklist corresponds to property of MSUpdate
				try {
					var target = (prop.indexOf("get") ? update[prop] : update[prop]()).toLowerCase();//< if the blacklist's name starts with get, we call getter. Also we make text lowercase to make case-insensitive matches.
				} catch (x) {
					WScript.Echo("Warning: there is no property/method " + prop + " in the lib");
				}
				for (j = 0; j < config.blacklists.keywords[prop].length; ++j) {
					if (target.indexOf(config.blacklists.keywords[prop]) > -1) {
						badUpdate=true;
						res.suspicious.push(update);
						break;
					}
				}
				if (badUpdate)break;
			}
		}
	}
	return res;
}

function main(simulate) {
	if ("undefined" == typeof simulate) {
		simulate = 1;
	}
	function updatesToKbs(updates) {//<convert array of update objects to array of kb codes
		var kbs = [];
		for (var i = 0; i < updates.length; i++) {
			for (var update in updates[i].kbs) {
				kbs.push(update);
			}
		}
		return kbs;
	}
	WScript.Echo("Getting list of updates...");
	var project = new MSUpdater;
	var updates = project.getUpdates("IsHidden=1 OR IsHidden=0");
	WScript.Echo(updates.length + " updates found. Filtering ....");
	var res=detectMaliciousUpdates(updates);
	
	WScript.Echo(
		"Following updates will be uninstalled:\n" + updatesToKbs(res.toUninstall).join(", ") +
		"\nFollowing updates will be hidden:\n" + updatesToKbs(res.toHide).join(", ") +
		"\nThe following updates are suspicious (you may want to examine them manually):\n" + updatesToKbs(res.suspicious).join(", ")
	);
	if (!simulate) {
		project.uninstall(res.toUninstall);//ms update (un)installs bunch of updates at once
		i = 0;
		for (; i < res.toHide.length; i++) {
			res.toHide[i].hide();//hide the updates
		}
	}
}
main();