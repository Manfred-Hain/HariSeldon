<%@ Control Language="C#" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="JQUERY" Src="~/Admin/Skins/jQuery.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>

<dnn:META ID="mobileScale" runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />

<dnn:JQUERY ID="dnnjQuery" runat="server" jQueryHoverIntent="true" />
<dnn:DnnJsInclude ID="modernizr" runat="server" FilePath="foundation/js/vendor/modernizr.js" PathNameAlias="SkinPath" Priority="101" />
<dnn:DnnJsInclude ID="foundationJS" runat="server" FilePath="foundation/js/foundation.min.js" PathNameAlias="SkinPath" Priority="102" />
<dnn:DnnJsInclude ID="foundationInit" runat="server" FilePath="foundation/js/foundation.init.js" PathNameAlias="SkinPath" Priority="103" ForceProvider="DnnFormBottomProvider" />

<dnn:DnnCssInclude ID="foundationCSS" runat="server" FilePath="foundation/css/foundation.css" PathNameAlias="SkinPath" Priority="14" />

<div class="top-bar">
    <div class="container">
        <nav data-topbar="">
            <ul class="title-area">
                <!-- Title Area -->
                <li class="name">
                    <dnn:LOGO runat="server" id="dnnLOGO" />
                </li>
            </ul>
            <section class="top-bar-section">
                <dnn:MENU MenuStyle="FoundationNav" runat="server"></dnn:MENU>
                <ul id="toolbox" class="right">
                    <li class="has-dropdown"><a href="#" class="SearchButton">Search</a>
                        <ul class="dropdown">
                            <li>
                                <div class="searchBox">
                                    <dnn:Search id="dnnSearch" runat="server" showsite="false" showweb="false" EnableTheming="true" Submit="Search" cssclass="SearchButton button" />
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <dnn:LOGIN ID="dnnLogin" CssClass="LoginLink" runat="server" LegacyMode="false" />
                    </li>
                    <li>
                        <%--<dnn:USER ID="dnnUser" runat="server" LegacyMode="false" />--%>
                    </li>
                </ul>
            </section>
        </nav>
    </div>
</div>

<div id="CarouselPane" runat="server" class="row" />

<div class="container">
    <!--/Logo-->

    <div id="TopContent" class="row">
        <div id="TopPane" runat="server" class="col-md-12" />
    </div>

    <div id="Content" class="row">
        <div id="ContentPane" runat="server" class="col-md-9" />
        <div id="RightPane" runat="server" class="col-md-3" />
    </div>
    <div id="MidContent" class="row">
        <div id="ThirdRowLeft" runat="server" class="col-md-4" />
        <div id="ThirdRowMiddle" runat="server" class="col-md-4" />
        <div id="ThirdRowRight" runat="server" class="col-md-4" />
    </div>
    <div id="ContentLeftCol" class="row">
        <div id="LeftPane" runat="server" class="col-md-3" />
        <div id="ContentPaneRight" runat="server" class="col-md-9" />
    </div>
    <div id="UserProfile" class="row">
        <div id="UserProfileLeft" runat="server" class="col-md-2" />
        <div id="UserProfileContent" runat="server" class="col-md-10" />
    </div>
    <div id="BottomContent" class="row">

        <div id="BottomPane" runat="server" class="col-md-12" />
    </div>
    <div id="FooterRow" class="row">

        <div id="FooterRowLeft" runat="server" class="col-md-4" />
        <div id="FooterRowMiddle" runat="server" class="col-md-4" />
        <div id="FooterRowRight" runat="server" class="col-md-4" />

        <div id="FooterPane" runat="server" class="col-md-12" />
        <div id="CopyRightPane" class="SkinLink col-md-12 center">
            <div class="col-md-12">
                <dnn:copyright ID="dnnCopyright" runat="server" />
                <dnn:terms id="dnnTerms" runat="server" />
                <dnn:privacy id="dnnPrivacy" runat="server" />
            </div>
            <a href="https://github.com/jbrinkman/HariSeldon">Design: HariSeldon DNN Skin by Joe Brinkman</a>
        </div>
    </div>
</div>


