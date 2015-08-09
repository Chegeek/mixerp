﻿<%--
Copyright (C) MixERP Inc. (http://mixof.org).

This file is part of MixERP.

MixERP is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, version 2 of the License.


MixERP is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with MixERP.  If not, see <http://www.gnu.org/licenses />.
--%>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RetainedEarnings.ascx.cs" Inherits="MixERP.Net.Core.Modules.Finance.Reports.RetainedEarnings" %>

<asp:PlaceHolder runat="server" ID="Placeholder1"></asp:PlaceHolder>

<script type="text/javascript">
    var printButton = $("#PrintButton");
    var dateTextBox = $("#DateTextBox");
    var factorInputText = $("#FactorInputText");


    printButton.click(function () {
        var report = "RetainedEarningsReport.mix?Date={0}&Factor={1}";
        var date = dateTextBox.val();
        var factor = factorInputText.val();

        report = String.format(report, date, factor);
        showWindow(report);
    });
</script>