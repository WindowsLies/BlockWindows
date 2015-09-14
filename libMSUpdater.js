"use strict";
/*
This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org/>
 */
 //@author KOLANICH

function MSUpdateArticle(kb) {//< represents a kb article
	this.kb = kb;
}
MSUpdateArticle.kb = null;

function MSUpdate(updObj) {//<represents update
	this.updateObj = updObj;

	this.title = this.updateObj.Title;//<update's title
	this.installed = this.updateObj.IsInstalled;//<is update installed in system?
	this.uninstallable = this.updateObj.IsUninstallable;//<can update be uninstalled?
	this.hidden = this.updateObj.IsHidden;//<is update hidden?
	this.mandatory = this.updateObj.IsMandatory;//<is update mandatory?
	this.beta = this.updateObj.IsBeta;//<is it beta?
	this.downloaded = this.updateObj.IsDownloaded;//<was the update downloaded
	this.requiresReboot = this.updateObj.RebootRequired;//<does installation/uninstallation
	this.id = this.updateObj.Identity.UpdateID;//< uuid of update
	this.revision = this.updateObj.Identity.RevisionNumber;//< its revision
	this.deadline = this.updateObj.Deadline ? new Date((this.updateObj.Deadline + 0)) : null;//< its date of 
	this.eulaAccepted = this.updateObj.EulaAccepted;//< have we accepted EULA?
	this.severity = this.updateObj.MsrcSeverity;//how much is it dangerous?

	switch (this.updateObj.AutoDownload) {
	case 0:
		this.autoDownload = "auto";
		break;
	case 1:
		this.autoDownload = "never";
		break;
	case 2:
		this.autoDownload = "always";
		break;
	default:
		this.autoDownload = "?";
		break;
	}
	switch (this.updateObj.Type) {
	case 1:
		this.type = "software";
		break;
	case 2:
		this.type = "driver";
		break;
	default:
		this.type = "?";
		break;
	}

	this.kbs = {};
	for (var j = 0; j < this.updateObj.KBArticleIDs.Count; j++) {
		var kb = Number(this.updateObj.KBArticleIDs(j));
		this.kbs[kb] = new MSUpdateArticle(kb);
	}
	this.cves = [];
	for (var j = 0; j < this.updateObj.CveIDs.Count; j++)
		this.cves.push(this.updateObj.CveIDs(j));
	this.supportUrl = this.updateObj.SupportUrl;

}

MSUpdate.prototype.kbs = {};//< kb articles related to update
MSUpdate.prototype.cves = [];//<security vulnerabilities related to update
MSUpdate.prototype.updateObj = null;//<WSH object

MSUpdate.prototype.hide = function (hide) {//<hides/unhides update
	this.hidden = (typeof hide == "undefined") ? true : false;
	this.updateObj.IsHidden = this.hidden;
}
MSUpdate.prototype.unhide = function () {//<unhides update
	return this.hide(false);
}
MSUpdate.prototype.getEULA = function () {//<gives you update EULA
	return this.updateObj.EulaText;
}
MSUpdate.prototype.getBundled = function () {//< gives you bundled updates (as objects)
	return this.updater._collection2Arr(this.updateObj.BundledUpdates);
}
MSUpdate.prototype.getReleaseNotes = function () {//< gives you release notes for update
	return this.updateObj.ReleaseNotes;
}
MSUpdate.prototype.getDescription = function () {//<gives update's localised description
	return this.updateObj.Description;
}
MSUpdate.prototype.toJSON = function () {//<needed if you want to serialize updates w/o undesired internal fields
	return {
		title : this.title,
		installed : this.installed,
		uninstallable : this.uninstallable,
		hidden: this.hidden,
		mandatory : this.mandatory,
		beta : this.beta,
		downloaded : this.downloaded,
		requiresReboot : this.requiresReboot,
		id : this.id,
		revision : this.revision,
		deadline : this.deadline,
		eulaAccepted : this.eulaAccepted,
		severity : this.severity,
		autoDownload : this.autoDownload,
		type : this.type,
		kbs: this.kbs,
		cves: this.cves
	};
}

function MSUpdater() {//<represents MS Update service, singleton
	MSUpdater.session = MSUpdater.session || new ActiveXObject("Microsoft.Update.Session");
	MSUpdater.installer = MSUpdater.installer || MSUpdater.session.CreateUpdateInstaller();
	MSUpdater.downloader = MSUpdater.downloader || MSUpdater.session.CreateUpdateDownloader();
	MSUpdater.searcher = MSUpdater.searcher || MSUpdater.session.CreateUpdateSearcher();
	this.session = MSUpdater.session;
	this.searcher = MSUpdater.searcher;
	this.installer = MSUpdater.installer;
	this.downloader = MSUpdater.downloader;
	//this.searcher.IncludePotentiallySupersededUpdates=true;
}
MSUpdater.prototype.session = null;//<represent MS Update session
MSUpdater.prototype.searcher = null;//<used to discover and filter updates
MSUpdater.prototype.installer = null;//<used to instal/uninstall updates
MSUpdater.prototype.getUpdates = function (criteria) {//<givess you updates satisfying the criteria, see https://msdn.microsoft.com/en-us/library/aa386526.aspx to understand query language
	var searchResult = this.searcher.Search(criteria);
	var result = [];
	return this._collection2Arr(searchResult.Updates);
}
MSUpdater.prototype._arr2Collection = function (arr) {//<converts  array of MSUpdate objects to IUpdateCollection (https://msdn.microsoft.com/en-us/library/aa386107.aspx)
	var coll = new ActiveXObject("Microsoft.Update.UpdateColl");
	for (var i = 0; i < arr.length; i++) {
		coll.Add(arr[i].updObj);
	}
	return coll;
}
MSUpdater.prototype._collection2Arr = function (coll) {//<converts IUpdateCollection (https://msdn.microsoft.com/en-us/library/aa386107.aspx) to array of MSUpdate objects
	var arr = [];
	for (var i = 0; i < coll.Count; i++) {
		var up = new MSUpdate(coll.Item(i));
		if (!up.updater)
			up.updater = this;
		arr.push(up);
	}
	return arr;
}
MSUpdater.prototype.install = function (arr) {//<installs updates
	this.installer.Updates = this._arr2Collection(arr);
	this.installer.Install();
}
MSUpdater.prototype.uninstall = function (arr) {//uninstalls updates
	this.installer.Updates = this._arr2Collection(arr);
	this.installer.Uninstall();
}