<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Icon.Web.FinanceMalta.Account.Registration" %>
<%@ Import Namespace="Icon.Snap.V2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   <script type="text/javascript">
       var regType = "<%= RegistrationType %>";
       var primaryUrl = "<%= SnapApplication.PrimaryUrl.TrimEnd('/') %>";
    </script>

   <!-- Mid -->
    <div id="midContainer">
	    <div id="midContent">
            <!-- Content 01 -->
            <div class="leftContentFull spacebottom">
        	    <h1><Icon:SimpleText ID="stPageTitle" runat="server" FriendlyName="Page Title" /></h1>
                <p><Icon:RichText ID="rtPageDescription" runat="server" FriendlyName="Page Description" /></p>
            </div>
		    <!-- Content 01 End -->   
          
        <!-- Forms Start -->
        <div class="width420 aright spacetop">
                I am applying for &nbsp;
            <select id="ddlFormChange" class="large">
                <option value="1">Corporate Membership</option>
                <option value="2">Affiliate Membership</option>
            </select>
        </div>
            
        <!-- main empty form -->
        <form method="post" id="empty"></form>

        <!-- Corporate Registration -->
        <div id="divCorporateRegistration" class="regform corp">
        
            <div id="linkCorporate" class="hidden">
                /register/corporate
            </div>
        
            <div id="linkAffiliate" class="hidden">
                /register/affiliate
            </div>

            <div class="info">
                <div class="inner">
                    <h3>Corporate Membership</h3>
                    <p>
                    <Icon:RichText ID="stCorporateDescription" runat="server" FriendlyName="Corporate Description" />
                    </p>
                </div>
            </div>
        
            <form method="post" action="http://www.dmaxepaper.com/epaper/form.php?form=200" id="frmSS200">
                <div class="wizard" id="wizard1">
                <div class="nav">
                    <div class='step' data-slide='1' style="width:80px; margin-left:-1px;">1. Member</div>
                    <div class='step' data-slide='2' style="width:110px">2. Classification</div>
                    <div class='step' data-slide='3' style="width:124px">3. Representative</div>
                    <div class='step' data-slide='4' style="width:110px">4. Membership</div>
                    <div class='step' data-slide='5' style="width:80px">5. Finish</div>
                </div>
                <div class="form-panel" data-slide='1' data-validatefunction="validateMemberFormCorporate();">
                    <div class="inner">
                        <h3>Step 1. Input the member's details.</h3>
                        <span class='sub-info'>As you would like them to appear on the FinanceMalta website.</span>
                 
                        <table class="spacetop">
                            <tr>
                                <td>
                                    <span>Company Name *</span>
                                    <input type="text" name="CustomFields[888]" id="CustomFields_888_200" value=""/>
                                </td>
                                <td>
                                    <span>Telephone *</span>
                                    <input type="text" name="CustomFields[890]" id="CustomFields_890_200" value="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Address *</span>
                                    <textarea name="CustomFields[886]" cols="50" rows="5" id="CustomFields_886_200"></textarea>
                                </td>
                                <td>
                                    <span>Fax</span>
                                    <input type="text" name="CustomFields[891]" id="CustomFields_891_200" value="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>City *</span>
                                    <input type="text" name="CustomFields[915]" id="CustomFields_915_200" value=""/>
                                </td>
                                <td>
                                    <span>Your E-Mail *</span>
                                    <input type="text" name="email" value="" id="tEmailc"  />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Country *</span>
                                    <input type="text" name="CustomFields[916]" id="CustomFields_916_200" value=""/>
                                </td>
                                <td>
                                    <span>Website</span>
                                    <input type="text" name="CustomFields[893]" id="CustomFields_893_200" value="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Postal Code *</span>
                                    <input type="text" name="CustomFields[889]" id="CustomFields_889_200" value=""/>
                                </td>
                                <td>
                                
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <div style="float:left; width:140px;">
                                    <h3>Application Type *</h3>
                                    <div id="divApplicationType" style="margin:5px -5px; float:left; width: 81px; height: 40px;">
                                    <label for="CustomFields[896_200]_Renewal">
                                        <input type="radio" name="CustomFields[896]" id="CustomFields[896_200]_Renewal" value="Renewal"/>Renewal</label>
                                    <label for="CustomFields[896_200]_New">
                                        <input type="radio" name="CustomFields[896]" id="CustomFields[896_200]_New" value="New"/>New</label>
                                    </div>
                                    </div>
                                
                                    <div style="float:left;">
                                    <h3>Membership Fees *</h3>
                                    <table id="tblMembershipFees" height="85" style="line-height: 22px; margin-left:-2px; width:378px;">
                                    <tbody>
                                        <tr>
                                        <td width="95" height="85" valign="top">
                                            <strong>Headcount</strong><br>
                                            151+<br>
                                            101-150<br>
                                            51-100
                                        </td>
                                        <td width="42" valign="top">
                                            <strong>Dues</strong><br/>
                                            €500
                                            <br/>
                                            €450
                                            <br/>
                                            €400
                                            <br/>
                                        </td>
                                        <td valign="top" width="43">
                                            <br>
                                            <label for="CustomFields[897_200]_500">
                                                <input type="radio" name="CustomFields[897]" id="CustomFields[897_200]_500" value="€500"/>&nbsp;</label><br/>
                                            <label for="CustomFields[897_200]_450">
                                                <input type="radio" name="CustomFields[897]" id="CustomFields[897_200]_450" value="€450"/>&nbsp;</label><br/>
                                            <label for="CustomFields[897_200]_400">
                                                <input type="radio" name="CustomFields[897]" id="CustomFields[897_200]_400" value="€400"/>&nbsp;</label>
                                        </td>
                                        <td width="10" valign="top">
                                            &nbsp;
                                        </td>
                                        <td width="95" valign="top">
                                            <strong>Headcount</strong><br>
                                            26-50<br>
                                            11-25<br>
                                            1-10
                                        </td>
                                        <td width="42" valign="top">
                                            <strong>Dues</strong><br>
                                            €350
                                            <br>
                                            €300
                                            <br>
                                            €200
                                            <br>
                                        </td>
                                        <td width="43" valign="top">
                                            <br>
                                            <label for="CustomFields[897_200]_350">
                                                <input type="radio" name="CustomFields[897]" id="CustomFields[897_200]_350" value="€350"/>&nbsp;</label><br/>
                                            <label for="CustomFields[897_200]_300">
                                                <input type="radio" name="CustomFields[897]" id="CustomFields[897_200]_300" value="€300"/>&nbsp;</label><br/>
                                            <label for="CustomFields[897_200]_200">
                                                <input type="radio" name="CustomFields[897]" id="CustomFields[897_200]_200" value="€200"/>&nbsp;</label><br/>
                                        </td>
                                    </tr>
                                    </tbody>
                                    </table>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" >
                                    <h3 id="trSocialMedia">Company Social Media Accounts</h3>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>LinkedIn URL</span>
                                    <input type="text" name="CustomFields[929]" id="CustomFields_929_201" value="">
                                </td>
                                <td>
                                    <span>Twitter URL</span>
                                    <input type="text" name="CustomFields[930]" id="CustomFields_930_201" value="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Facebook URL</span>
                                    <input type="text" name="CustomFields[933]" id="CustomFields_933_201" value="">
                                </td>
                                <td>
                                    <span>YouTube URL</span>
                                    <input type="text" name="CustomFields[931]" id="Text1" value="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Other</span>
                                    <input type="text" name="CustomFields[932]" id="CustomFields_932_201" value="">
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="form-panel hidden" data-slide='2' data-validatefunction="validateClassificationCorporate();">
                    <div class="inner">
                        <h3>Step 2. Choose your organization's classification.</h3>
                        <span class='sub-info'>Please tick the relevant box/es as you would like them to appear on the FinanceMalta website *</span>
                        <table id="tblCategories" class="categories spacetop">
                        <tr>
                            <td valign="top" style="width:370px !important;">
                                <label for="CustomFields[901_200]_Accounting/Auditing">
                                    <input type="checkbox" id="CustomFields[901_200]_Accounting/Auditing" name="CustomFields[901][]" value="Accounting/Auditing">Accounting/Auditing 
                                    <span class="question">[?]</span>
                                    <div class="tooltip">
                                        Firms licensed by the Accountancy Board in Malta to provide accounting or auditing
                                        services. The firms' name should appear on the Accountancy Board's register.</div>
                                </label>
                                <br>
                                <label for="CustomFields[901_200]_Banks and Financial Institutions">
                                    <input type="checkbox" id="CustomFields[901_200]_Banks and Financial Institutions" name="CustomFields[901][]" value="Banks and Financial Institutions">Banks and
                                    Financial Institutions <span class="question">[?]</span>
                                    <div class="tooltip">
                                        Credit institutions licensed by the MFSA in terms of the Banking Act (Cap. 371 -
                                        Laws of Malta) and branches of EEA credit institutions, as well as financial institutions
                                        that are licensed by the MFSA in terms of the Financial Institutions Act (Cap. 376
                                        - Laws of Malta).
                                    </div>
                                </label>
                                <br>
                                <label for="CustomFields[901_200]_Corporate Services">
                                    <input type="checkbox" id="CustomFields[901_200]_Corporate Services" name="CustomFields[901][]" value="Corporate Services">Corporate Services <span class="question">[?]</span>
                                    <div class="tooltip">
                                        All entities based in Malta that provide some type of corporate service including
                                        the incorporation of Maltese companies, ship &amp; yacht registration, re-domiciliation
                                        of companies to Malta, company directorship and management services in Malta, back
                                        office support and administration from Malta, payroll services in Malta, and opening
                                        of bank accounts.</div>
                                </label>
                                <br>
                                <label for="CustomFields[901_200]_Collective Investment Services">
                                    <input type="checkbox" id="CustomFields[901_200]_Collective Investment Services" name="CustomFields[901][]" value="Collective Investment Services">Collective
                                    Investment Services <span class="question">[?]</span>
                                    <div class="tooltip">
                                        All types of Collective Investment Schemes licensed under the Investment Services
                                        Act.</div>
                                </label>
                                <br>
                                <label for="CustomFields[901_200]_Fund Administration">
                                    <input type="checkbox" id="CustomFields[901_200]_Fund Administration" name="CustomFields[901][]" value="Fund Administration">Fund Administration <span class="question">[?]</span>
                                    <div class="tooltip">
                                        Firms recognized by the MFSA to provide fund administration services in terms of
                                        Section 9A of the Investment Services Act. [Fund Administrators, RICCs]</div>
                                </label>
                                <br>
                                <label for="CustomFields[901_200]_Institutions &amp; Public Companies">
                                    <input type="checkbox" id="CustomFields[901_200]_Institutions &amp; Public Companies" name="CustomFields[901][]" value="Institutions &amp; Public Companies">Institutions
                                    &amp; Public Companies <span class="question">[?]</span>
                                    <div class="tooltip">
                                        These include companies registered with the Register of Companies and admitted to
                                        listing by the Listing Authority, as well as public institutions.</div>
                                </label>
                                <br>
                                <label for="CustomFields[901_200]_Insurance">
                                    <input type="checkbox" id="CustomFields[901_200]_Insurance" name="CustomFields[901][]" value="Insurance">Insurance <span class="question">[?]</span>
                                    <div class="tooltip">
                                        Companies licensed under the Insurance Business Act (Cap 403 - Laws of Malta) and
                                        Insurance Intermediaries Act (Cap. 487 - Laws of Malta). These include insurance
                                        companies, affiliated insurance companies, reinsurance companies, protected cell
                                        companies, enrolled insurance agents, insurance brokers and insurance managers;
                                        registered individuals including agents, brokers, managers and tied insurance intermediaries.
                                        European Insurance Undertakings having a place of establishment in Malta.</div>
                                </label>
                                <br>
                                <label for="CustomFields[901_200]_Investment Services">
                                    <input type="checkbox" id="CustomFields[901_200]_Investment Services" name="CustomFields[901][]" value="Investment Services">Investment Services <span class="question">[?]</span>
                                    <div class="tooltip">
                                        All companies licensed by the MFSA under the Investment Services Act, CAP 370 of
                                        the Laws of Malta including Investment Services Providers [Category 1a, Category
                                        1b, Category 2 including Asset Managers, Category 3 including multilateral trading
                                        facilities, and Category 4 trustees or custodians.</div>
                                </label>
                                <br>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <label for="CustomFields[901_200]_Category 1a">
                                    <input type="checkbox" id="CustomFields[901_200]_Category 1a" name="CustomFields[901][]" value="Category 1a">Category 1a <span class="question">[?]</span>
                                    <div class="tooltip">
                                        Licence Holders authorised to receive and transmit orders in relation to one or
                                        more instrument and, or provide investment advice and, or place instruments without
                                        a firm commitment basis but not hold or control Clients' Money or Customers' Assets.</div>
                                </label>
                                <br>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <label for="CustomFields[901_200]_Category 1b">
                                    <input type="checkbox" id="CustomFields[901_200]_Category 1b" name="CustomFields[901][]" value="Category 1b">Category 1b <span class="question">[?]</span>
                                    <div class="tooltip">
                                        Licence Holders authorised to receive and transmit orders, and/or provide investment
                                        advice and/or place instruments without a firm commitment basis solely for Non-Private
                                        Customers but not to hold or control Clients' Money or Customers' Assets.</div>
                                </label>
                                <br>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <label for="CustomFields[901_200]_Category 2">
                                    <input type="checkbox" id="CustomFields[901_200]_Category 2" name="CustomFields[901][]" value="Category 2">Category 2 <span class="question">[?]</span>
                                    <div class="tooltip">
                                        Licence Holders authorised to provide any Investment Service, and hold or control
                                        Clients' Money or Customers' Assets, but not to operate a multilateral trading facility
                                        or deal for their own account or underwrite and/or place financial instruments on
                                        a firm commitment basis.</div>
                                </label>
                                <br>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <label for="CustomFields[901_200]_Category 3">
                                    <input type="checkbox" id="CustomFields[901_200]_Category 3" name="CustomFields[901][]" value="Category 3">Category 3 <span class="question">[?]</span>
                                    <div class="tooltip">
                                        Licence Holders authorised to provide any Investment Service including operating
                                        a multilateral trading facility, to hold and control Clients' Money or Customers'
                                        Assets and to deal for their own account or underwrite and / or place financial
                                        instruments on a firm commitment basis.</div>
                                </label>
                                <br>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <label for="CustomFields[901_200]_Category 4">
                                    <input type="checkbox" id="CustomFields[901_200]_Category 4" name="CustomFields[901][]" value="Category 4">Category 4 <span class="question">[?]</span>
                                    <div class="tooltip">
                                        Licence Holders authorised to act as trustees or custodians of Collective Investment
                                        Schemes.</div>
                                </label>
                            </td>
                            <td class="categories" valign="top">
                                <label for="CustomFields[901_200]_Law Firms">
                                    <input type="checkbox" id="CustomFields[901_200]_Law Firms" name="CustomFields[901][]" value="Law Firms">Law Firms <span class="question">[?]</span>
                                    <div class="tooltip">
                                        A partnership or association between advocates and includes an advocate who is sole
                                        practitioner. 'Partnership' means a civil partnership made up of lawyers whether
                                        or not properly constituted. 'Association' means any association between advocates
                                        in the exercise of the profession and includes a cost sharing arrangement.</div>
                                </label>
                                <br>
                                <label for="CustomFields[901_200]_Management Consultancy">
                                    <input type="checkbox" id="CustomFields[901_200]_Management Consultancy" name="CustomFields[901][]" value="Management Consultancy">Management Consultancy <span class="question">[?]</span>
                                    <div class="tooltip">
                                        Firms that provide consultancy services related to the management of legal entities.</div>
                                </label>
                                <br>
                                <label for="CustomFields[901_200]_Pensions">
                                    <input type="checkbox" id="CustomFields[901_200]_Pensions" name="CustomFields[901][]" value="Pensions">Pensions <span class="question">[?]</span>
                                    <div class="tooltip">
                                        These include Asset Managers, Retirement Fund Administrators, Retirement Fund Custodians,
                                        Retirement Funds, Retirement Scheme Administrators and Retirement Schemes, as licensed
                                        by the MFSA under the Special Funds (Regulation) Act (Cap. 450 - Laws of Malta).</div>
                                </label>
                                <br>
                                <label for="CustomFields[901_200]_Trustees and Fiduciaries">
                                    <input type="checkbox" id="CustomFields[901_200]_Trustees and Fiduciaries" name="CustomFields[901][]" value="Trustees and Fiduciaries">Trustees and Fiduciaries <span class="question">[?]</span>
                                    <div class="tooltip">
                                        Administrators of private foundations and companies that are authorised to act as
                                        trustee and/or provide fiduciary services by the MFSA under the Trusts and Trustees
                                        Act (Cap. 331 - Laws of Malta).</div>
                                </label>
                                <br>
                                <label for="CustomFields[901_200]_Tax Services">
                                    <input type="checkbox" id="CustomFields[901_200]_Tax Services" name="CustomFields[901][]" value="Tax Services">Tax Services <span class="question">[?]</span>
                                    <div class="tooltip">
                                        Firms that provide tax advice as a specialist service.</div>
                                </label>
                                <br>
                            </td>
                        </tr>
                    </table>
                    </div>
                </div>
                <div class="form-panel hidden" data-slide='3' data-validatefunction="validateRepresentativeCorporate();">
                    <div class="inner">
                        <h3>Step 3. Input the representative's details.</h3>
                    
                         <table class="spacetop">
                            <tr>
                                <td>
                                    <span>CEO/MD *</span>
                                    <input type="text" name="CustomFields[902]" id="CustomFields_902_200" value="">
                                </td>
                                <td>
                                    <span>General Contact Name *</span>
                                    <input type="text" name="CustomFields[908]" id="CustomFields_908_200" value="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Designation *</span>
                                    <input type="text" name="CustomFields[903]" id="CustomFields_903_200" value="">
                                </td>
                                <td>
                                    <span>Position *</span>
                                    <input type="text" name="CustomFields[909]" id="CustomFields_909_200" value="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>E-Mail *</span>
                                    <input type="text" name="CustomFields[892]" id="CustomFields_892_200" value="">
                                </td>
                                <td>
                                    <span>E-mail *</span>
                                    <input type="text" name="CustomFields[910]" id="CustomFields_910_200" value="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Direct Line</span>
                                    <input type="text" name="CustomFields[904]" id="CustomFields_904_200" value="">
                                </td>
                                <td>
                                    <span>Direct Line</span>
                                    <input type="text" name="CustomFields[911]" id="CustomFields_911_200" value="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Mobile</span>
                                    <input type="text" name="CustomFields[905]" id="CustomFields_905_200" value="">
                                </td>
                                <td>
                                    <span>Mobile</span>
                                    <input type="text" name="CustomFields[912]" id="CustomFields_912_200" value="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Date of Birth *</span>
                                    <select name="CustomFields[907][dd]" id="CustomFields_907_dd">
                                        <option value="01">1</option>
                                        <option value="02">2</option>
                                        <option value="03">3</option>
                                        <option value="04">4</option>
                                        <option value="05">5</option>
                                        <option value="06">6</option>
                                        <option value="07">7</option>
                                        <option value="08">8</option>
                                        <option value="09">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>
                                        <option value="14">14</option>
                                        <option value="15">15</option>
                                        <option value="16">16</option>
                                        <option value="17">17</option>
                                        <option value="18">18</option>
                                        <option value="19">19</option>
                                        <option value="20">20</option>
                                        <option value="21">21</option>
                                        <option value="22">22</option>
                                        <option value="23">23</option>
                                        <option value="24">24</option>
                                        <option value="25">25</option>
                                        <option value="26">26</option>
                                        <option value="27">27</option>
                                        <option value="28">28</option>
                                        <option value="29">29</option>
                                        <option value="30">30</option>
                                        <option value="31">31</option>
                                    </select><select name="CustomFields[907][mm]" id="CustomFields_907_mm"><option value="01">
                                        Jan</option>
                                        <option value="02">Feb</option>
                                        <option value="03">Mar</option>
                                        <option value="04">Apr</option>
                                        <option value="05">May</option>
                                        <option value="06">Jun</option>
                                        <option value="07">Jul</option>
                                        <option value="08">Aug</option>
                                        <option value="09">Sep</option>
                                        <option value="10">Oct</option>
                                        <option value="11">Nov</option>
                                        <option value="12">Dec</option>
                                    </select><select name="CustomFields[907][yy]" id="CustomFields_907_yy"><option value="1930">
                                        1930</option>
                                        <option value="1931">1931</option>
                                        <option value="1932">1932</option>
                                        <option value="1933">1933</option>
                                        <option value="1934">1934</option>
                                        <option value="1935">1935</option>
                                        <option value="1936">1936</option>
                                        <option value="1937">1937</option>
                                        <option value="1938">1938</option>
                                        <option value="1939">1939</option>
                                        <option value="1940">1940</option>
                                        <option value="1941">1941</option>
                                        <option value="1942">1942</option>
                                        <option value="1943">1943</option>
                                        <option value="1944">1944</option>
                                        <option value="1945">1945</option>
                                        <option value="1946">1946</option>
                                        <option value="1947">1947</option>
                                        <option value="1948">1948</option>
                                        <option value="1949">1949</option>
                                        <option value="1950">1950</option>
                                        <option value="1951">1951</option>
                                        <option value="1952">1952</option>
                                        <option value="1953">1953</option>
                                        <option value="1954">1954</option>
                                        <option value="1955">1955</option>
                                        <option value="1956">1956</option>
                                        <option value="1957">1957</option>
                                        <option value="1958">1958</option>
                                        <option value="1959">1959</option>
                                        <option value="1960">1960</option>
                                        <option value="1961">1961</option>
                                        <option value="1962">1962</option>
                                        <option value="1963">1963</option>
                                        <option value="1964">1964</option>
                                        <option value="1965">1965</option>
                                        <option value="1966">1966</option>
                                        <option value="1967">1967</option>
                                        <option value="1968">1968</option>
                                        <option value="1969">1969</option>
                                        <option value="1970">1970</option>
                                        <option value="1971">1971</option>
                                        <option value="1972">1972</option>
                                        <option value="1973">1973</option>
                                        <option value="1974">1974</option>
                                        <option value="1975">1975</option>
                                        <option value="1976">1976</option>
                                        <option value="1977">1977</option>
                                        <option value="1978">1978</option>
                                        <option value="1979">1979</option>
                                        <option value="1980">1980</option>
                                        <option value="1981">1981</option>
                                        <option value="1982">1982</option>
                                        <option value="1983">1983</option>
                                        <option value="1984">1984</option>
                                        <option value="1985">1985</option>
                                        <option value="1986">1986</option>
                                        <option value="1987">1987</option>
                                        <option value="1988">1988</option>
                                        <option value="1989">1989</option>
                                        <option value="1990">1990</option>
                                        <option value="1991">1991</option>
                                        <option value="1992">1992</option>
                                        <option value="1993">1993</option>
                                        <option value="1994">1994</option>
                                        <option value="1995">1995</option>
                                        <option value="1996">1996</option>
                                        <option value="1997">1997</option>
                                        <option value="1998">1998</option>
                                        <option value="1999">1999</option>
                                        <option value="2000">2000</option>
                                        <option value="2001">2001</option>
                                        <option value="2002">2002</option>
                                        <option value="2003">2003</option>
                                        <option value="2004">2004</option>
                                        <option value="2005">2005</option>
                                        <option value="2006">2006</option>
                                        <option value="2007">2007</option>
                                        <option value="2008">2008</option>
                                        <option value="2009">2009</option>
                                        <option value="2010">2010</option>
                                        <option value="2011">2011</option>
                                        <option value="2012">2012</option>
                                        <option value="2013">2013</option>
                                        <option value="2014">2014</option>
                                        <option value="2015">2015</option>
                                        <option value="2016">2016</option>
                                        <option value="2017">2017</option>
                                        <option value="2018">2018</option>
                                        <option value="2019">2019</option>
                                        <option value="2020">2020</option>
                                    </select>
                                </td>
                                <td>
                                    <span>VAT Number</span>
                                    <input type="text" name="CustomFields[894]" id="CustomFields_894_200" value="">
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="form-panel hidden" data-slide='4'>
                    <div class="inner">
                        <h3>Step 4. Membership of Subsidiaries.</h3>
                        <br/>
                        <span class='sub-info'>
                            Membership of an entity does not automatically include its subsidiaries. 
                            Subsidiaries are entitled to a 50% discount on the applicable membership fee. If the company is a subsidiary please fill in the following.
                        </span>
                    
                        <table style="width:455px; margin:30px auto;" class="">
                            <tr>
                                <td style="vertical-align:middle;">
                                    <span>Subsidiary of (Company Name): </span>
                                </td>
                                <td>
                                    <input type="text" name="CustomFields[913]" id="CustomFields_913_200" value="" style="width:230px;">
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="form-panel hidden" data-slide='5' data-validatefunction="validateFinishCorporate();">
                    <div class="inner">
                        <h3>Step 5. Complete your registration.</h3>
                    
                        <table id="cbsAuthorise" style="width:455px; margin:30px auto;" class="">
                            <tr>
                                <td style="vertical-align:top; width:10%;">
                                    <label for="CustomFields[914_200]_We authorise FinanceMalta to use our company name in press releases/marketing and other PR initiatives.">
                                        <input type="checkbox" id="CustomFields[914_200]_We authorise FinanceMalta to use our company name in press releases/marketing and other PR initiatives." name="CustomFields[914][]" value="We authorise FinanceMalta to use our company name in press releases/marketing and other PR initiatives.">
                                    </label>
                                </td>
                                <td>
                                    We authorise FinanceMalta to use our company name in press releases/marketing
                                    and other PR initiatives. * 
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align:top; width:10%;">
                                    <label for="CustomFields[914_200]_We understand that by becoming a member of FinanceMalta we are authorising the latter to contact us by mail, telephone, email, electronic messaging including text messaging or fax for any purpose that falls within the remit of FinanceMalta">
                                    <input type="checkbox" id="CustomFields[914_200]_We understand that by becoming a member of FinanceMalta we are authorising the latter to contact us by mail, telephone, email, electronic messaging including text messaging or fax for any purpose that falls within the remit of FinanceMalta" name="CustomFields[914][]" value="We understand that by becoming a member of FinanceMalta we are authorising the latter to contact us by mail, telephone, email, electronic messaging including text messaging or fax for any purpose that falls within the remit of FinanceMalta"></label>
                                </td>
                                <td>
                                    We understand that by becoming a member of FinanceMalta we are authorising
                                    the latter to contact us by mail, telephone, email, electronic messaging including
                                    text messaging or fax for any purpose that falls within the remit of FinanceMalta.  * 
                                </td>
                            </tr>
                        </table>
                        <input type="hidden" name="format" value="h" />
                        <table class="spacetop">
                            <tr>
                            <td style="vertical-align: bottom; padding-bottom: 13px; width:200px; padding-left:20px;">
                                Enter the security code shown *
                            </td>
                            <td>
                                <script type="text/javascript">
                                // <![CDATA[
                                    if (!Application) var Application = {};
                                    if (!Application.Page) Application.Page = {};
                                    if (!Application.Page.ClientCAPTCHA) {
                                        Application.Page.ClientCAPTCHA = {
                                            sessionIDString: '',
                                            captchaURL: [],
                                            getRandomLetter: function () { return String.fromCharCode(Application.Page.ClientCAPTCHA.getRandom(65, 90)); },
                                            getRandom: function (lowerBound, upperBound) { return Math.floor((upperBound - lowerBound + 1) * Math.random() + lowerBound); },
                                            getSID: function () {
                                                if (Application.Page.ClientCAPTCHA.sessionIDString.length <= 0) {
                                                    var tempSessionIDString = '';
                                                    for (var i = 0; i < 32; ++i) tempSessionIDString += Application.Page.ClientCAPTCHA.getRandomLetter();
                                                    Application.Page.ClientCAPTCHA.sessionIDString.length = tempSessionIDString;
                                                }
                                                return Application.Page.ClientCAPTCHA.sessionIDString;
                                            },
                                            getURL: function () {
                                                if (Application.Page.ClientCAPTCHA.captchaURL.length <= 0) {
                                                    var tempURL = 'http://www.dmaxepaper.com/epaper/admin/resources/form_designs/captcha/index.php?c=';

                                                    tempURL += Application.Page.ClientCAPTCHA.getRandom(1, 1000);
                                                    tempURL += '&ss=' + Application.Page.ClientCAPTCHA.getSID();
                                                    Application.Page.ClientCAPTCHA.captchaURL.push(tempURL);
                                                }
                                                return Application.Page.ClientCAPTCHA.captchaURL;
                                            }
                                        }
                                    }

                                    var temp = Application.Page.ClientCAPTCHA.getURL();
                                    for (var i = 0, j = temp.length; i < j; i++) document.write('<img src="' + temp[i] + '" alt="img' + i + '" />');
                                // ]]>
                                </script>
                                <br />
                                <input type="text" name="captcha" id="captcha" value="" />
                            </td>
                        </tr>
                        </table>   
                    </div>
                </div>
                <div class="fright aright buttoncontainer controls">
                    <input type='submit' value='Submit' class="btn red finish" onclick="return validateFinishCorporate();" style="margin-top: 0px;height: 25px;"></input>
                    <div class="btn red next">Next</div>
                    <div class="btn red prev">Back</div>
                </div>
                </div>
            </form>
        </div>
    
        <!-- Affiliate Registration -->
        <div id="divAffiliateRegistration" class="regform afi hidden">
            <div class="info">
                <div class="inner">
                    <h3>Affiliate Membership</h3>
                    <p>
                    <Icon:RichText ID="stAffiliateDescription" runat="server" FriendlyName="Afiliate Description" />
                    </p>
                </div>
            </div>
            <form method="post" action="http://www.dmaxepaper.com/epaper/form.php?form=201" id="frmSS201">
                <div class="wizard" id="wizard2">
                <div class="nav">
                    <div class='step active' data-slide='1' style="width:120px; margin-left:-1px;">1. Member</div>
                    <div class='step' data-slide='2' style="width:150px">2. Representative</div>
                    <div class='step' data-slide='3' style="width:124px">3. Services</div>
                    <div class='step' data-slide='4' style="width:120px">4. Finish</div>
                </div>
                <div class="form-panel" data-slide='1' data-validatefunction="validateMemberFormAffiliate();">
                    <div class="inner">
                        <h3>Step 1. Input the member's details.</h3>
                        <span class='sub-info'>As you would like them to appear on the FinanceMalta website.</span>
                    
                        <table class="spacetop">
                            <tr>
                                <td>
                                    <span>Company Name *</span>
                                    <input type="text" name="CustomFields[888]" id="CustomFields_888_201" value="">
                                </td>
                                <td>
                                    <span>Telephone *</span>
                                    <input type="text" name="CustomFields[890]" id="CustomFields_890_201" value="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Address *</span>
                                    <textarea name="CustomFields[886]" cols="50" rows="5" id="CustomFields_886_201"></textarea>
                                </td>
                                <td>
                                    <span>Fax</span>
                                    <input type="text" name="CustomFields[891]" id="CustomFields_891_201" value="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>City *</span>
                                    <input type="text" name="CustomFields[915]" id="CustomFields_915_201" value="">
                                </td>
                                <td>
                                    <span>Your E-Mail *</span>
                                    <input type="text" name="email" value="" id="emailafi"  />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Country *</span>
                                    <input type="text" name="CustomFields[916]" id="CustomFields_916_201" value="">
                                </td>
                                <td>
                                    <span>Website</span>
                                    <input type="text" name="CustomFields[893]" id="CustomFields_893_201" value="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Postal Code *</span>
                                    <input type="text" name="CustomFields[889]" id="CustomFields_889_201" value="">
                                </td>
                                <td>
                                
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <div style="float:left; width:140px;">
                                    <h3>Application Type *</h3>

                                    <div id="divApplicationTypeAfi" style="margin:5px -5px; float:left; width: 81px; height: 40px;">
                                     <label for="CustomFields[896_201]_Renewal">
                                        <input type="radio" name="CustomFields[896]" id="CustomFields[896_201]_Renewal" value="Renewal">Renewal</label>
                                    <label for="CustomFields[896_201]_New">
                                        <input type="radio" name="CustomFields[896]" id="CustomFields[896_201]_New" value="New">New</label><br>
                                    </div>
                                    </div>   
                                </td>
                                <td>
                                    <div style="float:left;" >
                                    <h3>Membership Fees Due *</h3>
                                    €300
                                    <br/><br/>
                                    <h3>Payment By *</h3>
                                    </div>
                                    <div style="float:left;" id="divPaymentType">
                                    <label for="CustomFields[918_201]_Cheque">
                                        <input type="checkbox" id="CustomFields[918_201]_Cheque" name="CustomFields[918][]" value="Cheque">Cheque</label>
                                    <label for="CustomFields[918_201]_Bank Transfer">
                                        <input type="checkbox" id="CustomFields[918_201]_Bank Transfer" name="CustomFields[918][]" value="Bank Transfer">Bank Transfer</label><br>
                                    </div>
                                </td>
                            </tr>
                             <tr>
                                <td></td>
                                <td>
                               
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" >
                                    <h3 id="H1">Company Social Media Accounts</h3>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>LinkedIn URL</span>
                                    <input type="text" name="CustomFields[929]" id="Text2" value="">
                                </td>
                                <td>
                                    <span>Twitter URL</span>
                                    <input type="text" name="CustomFields[930]" id="Text3" value="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Facebook URL</span>
                                    <input type="text" name="CustomFields[933]" id="Text4" value="">
                                </td>
                                <td>
                                    <span>YouTube URL</span>
                                    <input type="text" name="CustomFields[931]" id="CustomFields_931_201" value="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Other</span>
                                    <input type="text" name="CustomFields[932]" id="Text14" value="">
                                </td>
                            </tr>
                        </table>

                     </div>
                </div>
                <div class="form-panel hidden" data-slide='2' data-validatefunction="validateRepresentativeAffiliate();">
                    <div class="inner">
                        <h3>Step 2. Input the representative's details.</h3>
                    
                        <table class="spacetop">
                            <tr>
                                <td>
                                    <span>CEO/MD *</span>
                                    <input type="text" name="CustomFields[902]" id="CustomFields_902_201" value="">
                                </td>
                                <td>
                                    <span>General Contact Name *</span>
                                    <input type="text" name="CustomFields[908]" id="CustomFields_908_201" value="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Designation *</span>
                                    <input type="text" name="CustomFields[903]" id="CustomFields_903_201" value="">
                                </td>
                                <td>
                                    <span>Position *</span>
                                    <input type="text" name="CustomFields[909]" id="CustomFields_909_201" value="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>E-Mail *</span>
                                    <input type="text" name="CustomFields[892]" id="CustomFields_892_201" value="">
                                </td>
                                <td>
                                    <span>E-mail *</span>
                                    <input type="text" name="CustomFields[910]" id="CustomFields_910_201" value="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Direct Line</span>
                                    <input type="text" name="CustomFields[904]" id="CustomFields_904_201" value="">
                                </td>
                                <td>
                                    <span>Direct Line</span>
                                    <input type="text" name="CustomFields[911]" id="CustomFields_911_201" value="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Mobile</span>
                                    <input type="text" name="CustomFields[905]" id="CustomFields_905_201" value="">
                                </td>
                                <td>
                                    <span>Mobile</span>
                                    <input type="text" name="CustomFields[912]" id="CustomFields_912_201" value="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>Date of Birth *</span>
                                    <select name="CustomFields[907][dd]" id="CustomFields_907_dd">
                                        <option value="01">1</option>
                                        <option value="02">2</option>
                                        <option value="03">3</option>
                                        <option value="04">4</option>
                                        <option value="05">5</option>
                                        <option value="06">6</option>
                                        <option value="07">7</option>
                                        <option value="08">8</option>
                                        <option value="09">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>
                                        <option value="14">14</option>
                                        <option value="15">15</option>
                                        <option value="16">16</option>
                                        <option value="17">17</option>
                                        <option value="18">18</option>
                                        <option value="19">19</option>
                                        <option value="20">20</option>
                                        <option value="21">21</option>
                                        <option value="22">22</option>
                                        <option value="23">23</option>
                                        <option value="24">24</option>
                                        <option value="25">25</option>
                                        <option value="26">26</option>
                                        <option value="27">27</option>
                                        <option value="28">28</option>
                                        <option value="29">29</option>
                                        <option value="30">30</option>
                                        <option value="31">31</option>
                                    </select>
                                    <select name="CustomFields[907][mm]" id="CustomFields_907_mm">
                                        <option value="01">Jan</option>
                                        <option value="02">Feb</option>
                                        <option value="03">Mar</option>
                                        <option value="04">Apr</option>
                                        <option value="05">May</option>
                                        <option value="06">Jun</option>
                                        <option value="07">Jul</option>
                                        <option value="08">Aug</option>
                                        <option value="09">Sep</option>
                                        <option value="10">Oct</option>
                                        <option value="11">Nov</option>
                                        <option value="12">Dec</option>
                                    </select>
                                    <select name="CustomFields[907][yy]" id="CustomFields_907_yy"><option value="1930">
                                        1930</option>
                                        <option value="1931">1931</option>
                                        <option value="1932">1932</option>
                                        <option value="1933">1933</option>
                                        <option value="1934">1934</option>
                                        <option value="1935">1935</option>
                                        <option value="1936">1936</option>
                                        <option value="1937">1937</option>
                                        <option value="1938">1938</option>
                                        <option value="1939">1939</option>
                                        <option value="1940">1940</option>
                                        <option value="1941">1941</option>
                                        <option value="1942">1942</option>
                                        <option value="1943">1943</option>
                                        <option value="1944">1944</option>
                                        <option value="1945">1945</option>
                                        <option value="1946">1946</option>
                                        <option value="1947">1947</option>
                                        <option value="1948">1948</option>
                                        <option value="1949">1949</option>
                                        <option value="1950">1950</option>
                                        <option value="1951">1951</option>
                                        <option value="1952">1952</option>
                                        <option value="1953">1953</option>
                                        <option value="1954">1954</option>
                                        <option value="1955">1955</option>
                                        <option value="1956">1956</option>
                                        <option value="1957">1957</option>
                                        <option value="1958">1958</option>
                                        <option value="1959">1959</option>
                                        <option value="1960">1960</option>
                                        <option value="1961">1961</option>
                                        <option value="1962">1962</option>
                                        <option value="1963">1963</option>
                                        <option value="1964">1964</option>
                                        <option value="1965">1965</option>
                                        <option value="1966">1966</option>
                                        <option value="1967">1967</option>
                                        <option value="1968">1968</option>
                                        <option value="1969">1969</option>
                                        <option value="1970">1970</option>
                                        <option value="1971">1971</option>
                                        <option value="1972">1972</option>
                                        <option value="1973">1973</option>
                                        <option value="1974">1974</option>
                                        <option value="1975">1975</option>
                                        <option value="1976">1976</option>
                                        <option value="1977">1977</option>
                                        <option value="1978">1978</option>
                                        <option value="1979">1979</option>
                                        <option value="1980">1980</option>
                                        <option value="1981">1981</option>
                                        <option value="1982">1982</option>
                                        <option value="1983">1983</option>
                                        <option value="1984">1984</option>
                                        <option value="1985">1985</option>
                                        <option value="1986">1986</option>
                                        <option value="1987">1987</option>
                                        <option value="1988">1988</option>
                                        <option value="1989">1989</option>
                                        <option value="1990">1990</option>
                                        <option value="1991">1991</option>
                                        <option value="1992">1992</option>
                                        <option value="1993">1993</option>
                                        <option value="1994">1994</option>
                                        <option value="1995">1995</option>
                                        <option value="1996">1996</option>
                                        <option value="1997">1997</option>
                                        <option value="1998">1998</option>
                                        <option value="1999">1999</option>
                                        <option value="2000">2000</option>
                                        <option value="2001">2001</option>
                                        <option value="2002">2002</option>
                                        <option value="2003">2003</option>
                                        <option value="2004">2004</option>
                                        <option value="2005">2005</option>
                                        <option value="2006">2006</option>
                                        <option value="2007">2007</option>
                                        <option value="2008">2008</option>
                                        <option value="2009">2009</option>
                                        <option value="2010">2010</option>
                                        <option value="2011">2011</option>
                                        <option value="2012">2012</option>
                                        <option value="2013">2013</option>
                                        <option value="2014">2014</option>
                                        <option value="2015">2015</option>
                                        <option value="2016">2016</option>
                                        <option value="2017">2017</option>
                                        <option value="2018">2018</option>
                                        <option value="2019">2019</option>
                                        <option value="2020">2020</option>
                                    </select>
                                </td>
                                <td>
                                    <span>VAT Number</span>
                                    <input type="text" name="CustomFields[894]" id="CustomFields_894_201" value="">
                                </td>
                            </tr>
                        </table>

                    </div>
                </div>
                <div class="form-panel hidden" data-slide='3' data-validatefunction="validateServicesAffiliate();">
                    <div class="inner">
                        <h3>Step 3. Services Provided by the Applicant.</h3>
                        <span class='sub-info'>Please tick the relevant box/es</span>
                    
                        <table id="tblServices" width="100%" border="0" cellspacing="2" cellpadding="2" class="spacetop">
                        <tbody><tr>
                            <td width="50%" valign="top">
                                <label for="CustomFields[923_201]_Accommodation">
                                    <input type="checkbox" id="CustomFields[923_201]_Accommodation" name="CustomFields[923][]" value="Accommodation">Accommodation</label><br>
                                <label for="CustomFields[923_201]_Business Services">
                                    <input type="checkbox" id="CustomFields[923_201]_Business Services" name="CustomFields[923][]" value="Business Services">Business Services</label><br>
                                <label for="CustomFields[923_201]_Dining">
                                    <input type="checkbox" id="CustomFields[923_201]_Dining" name="CustomFields[923][]" value="Dining">Dining</label><br>
                                <label for="CustomFields[923_201]_Education">
                                    <input type="checkbox" id="CustomFields[923_201]_Education" name="CustomFields[923][]" value="Education">Education</label><br>
                                <label for="CustomFields[923_201]_Health">
                                    <input type="checkbox" id="CustomFields[923_201]_Health" name="CustomFields[923][]" value="Health">Health</label><br>
                                <label for="CustomFields[923_201]_Leisure">
                                    <input type="checkbox" id="CustomFields[923_201]_Leisure" name="CustomFields[923][]" value="Leisure">Leisure</label><br>
                                <label for="CustomFields[923_201]_Logistics &amp; Freight Forwarding">
                                    <input type="checkbox" id="CustomFields[923_201]_Logistics &amp; Freight Forwarding" name="CustomFields[923][]" value="Logistics &amp; Freight Forwarding">Logistics &amp; Freight Forwarding</label><br>
                            </td>
                            <td width="50%" valign="top">
                                <label for="CustomFields[923_201]_Manufacturing">
                                    <input type="checkbox" id="CustomFields[923_201]_Manufacturing" name="CustomFields[923][]" value="Manufacturing">Manufacturing</label><br>
                                <label for="CustomFields[923_201]_Media Organisations">
                                    <input type="checkbox" id="CustomFields[923_201]_Media Organisations" name="CustomFields[923][]" value="Media Organisations">Media Organisations</label><br>
                                <label for="CustomFields[923_201]_Professional Services">
                                    <input type="checkbox" id="CustomFields[923_201]_Professional Services" name="CustomFields[923][]" value="Professional Services">Professional Services</label><br>
                                <label for="CustomFields[923_201]_Real Estate">
                                    <input type="checkbox" id="CustomFields[923_201]_Real Estate" name="CustomFields[923][]" value="Real Estate">Real Estate</label><br>
                                <label for="CustomFields[923_201]_Recruitment Services">
                                    <input type="checkbox" id="CustomFields[923_201]_Recruitment Services" name="CustomFields[923][]" value="Recruitment Services">Recruitment Services</label><br>
                                <label for="CustomFields[923_201]_Telecommunications &amp; IT">
                                    <input type="checkbox" id="CustomFields[923_201]_Telecommunications &amp; IT" name="CustomFields[923][]" value="Telecommunications &amp; IT">Telecommunications &amp; IT</label><br>
                                <label for="CustomFields[923_201]_Travel &amp; Transport">
                                    <input type="checkbox" id="CustomFields[923_201]_Travel &amp; Transport" name="CustomFields[923][]" value="Travel &amp; Transport">Travel &amp; Transport</label><br>
                            </td>
                        </tr>
                        </tbody>
                        </table>

                     </div>
                </div>
                <div class="form-panel hidden" data-slide='4' data-validatefunction="validateFinishAffiliate();">
                    <div class="inner">
                        <h3>Step 4. Finish.</h3>
                    
                        <table id="cbsAuthoriseAfi" style="width:455px; margin:30px auto;" class="">
                            <tr>
                                <td style="vertical-align:top; width:10%;">
                                    <label for="CustomFields[914_201]_We authorise FinanceMalta to use our company name in press releases/marketing and other PR initiatives.">
                                        <input type="checkbox" id="CustomFields[914_201]_We authorise FinanceMalta to use our company name in press releases/marketing and other PR initiatives." name="CustomFields[914][]" value="We authorise FinanceMalta to use our company name in press releases/marketing and other PR initiatives.">
                                    </label>
                                </td>
                                <td>
                                    We authorise FinanceMalta to use our company name in press releases/marketing
                                    and other PR initiatives. * 
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align:top; width:10%;">
                                    <label for="CustomFields[914_201]_We understand that by becoming a member of FinanceMalta we are authorising the latter to contact us by mail, telephone, email, electronic messaging including text messaging or fax for any purpose that falls within the remit of FinanceMalta">
                                    <input type="checkbox" id="CustomFields[914_201]_We understand that by becoming a member of FinanceMalta we are authorising the latter to contact us by mail, telephone, email, electronic messaging including text messaging or fax for any purpose that falls within the remit of FinanceMalta" name="CustomFields[914][]" value="We understand that by becoming a member of FinanceMalta we are authorising the latter to contact us by mail, telephone, email, electronic messaging including text messaging or fax for any purpose that falls within the remit of FinanceMalta"></label>
                                </td>
                                <td>
                                    We understand that by becoming a member of FinanceMalta we are authorising
                                    the latter to contact us by mail, telephone, email, electronic messaging including
                                    text messaging or fax for any purpose that falls within the remit of FinanceMalta.  * 
                                </td>
                            </tr>
                        </table>
                        <input type="hidden" name="format" value="h" />
                        <table class="spacetop">
                            <tr>
                            <td style="vertical-align: bottom; padding-bottom: 13px; width:200px; padding-left:20px;">
                                Enter the security code shown *
                            </td>
                            <td>
                                <script type="text/javascript">
                                // <![CDATA[
                                    if (!Application) var Application = {};
                                    if (!Application.Page) Application.Page = {};
                                    if (!Application.Page.ClientCAPTCHA) {
                                        Application.Page.ClientCAPTCHA = {
                                            sessionIDString: '',
                                            captchaURL: [],
                                            getRandomLetter: function () { return String.fromCharCode(Application.Page.ClientCAPTCHA.getRandom(65, 90)); },
                                            getRandom: function (lowerBound, upperBound) { return Math.floor((upperBound - lowerBound + 1) * Math.random() + lowerBound); },
                                            getSID: function () {
                                                if (Application.Page.ClientCAPTCHA.sessionIDString.length <= 0) {
                                                    var tempSessionIDString = '';
                                                    for (var i = 0; i < 32; ++i) tempSessionIDString += Application.Page.ClientCAPTCHA.getRandomLetter();
                                                    Application.Page.ClientCAPTCHA.sessionIDString.length = tempSessionIDString;
                                                }
                                                return Application.Page.ClientCAPTCHA.sessionIDString;
                                            },
                                            getURL: function () {
                                                if (Application.Page.ClientCAPTCHA.captchaURL.length <= 0) {
                                                    var tempURL = 'http://www.dmaxepaper.com/epaper/admin/resources/form_designs/captcha/index.php?c=';

                                                    tempURL += Application.Page.ClientCAPTCHA.getRandom(1, 1000);
                                                    tempURL += '&ss=' + Application.Page.ClientCAPTCHA.getSID();
                                                    Application.Page.ClientCAPTCHA.captchaURL.push(tempURL);
                                                }
                                                return Application.Page.ClientCAPTCHA.captchaURL;
                                            }
                                        }
                                    }

                                    var temp = Application.Page.ClientCAPTCHA.getURL();
                                    for (var i = 0, j = temp.length; i < j; i++) document.write('<img src="' + temp[i] + '" alt="img' + i + '" />');
                                // ]]>
                                </script>
                                <br />
                                <input type="text" name="captcha" id="captchaAfi" value="" />
                            </td>
                        </tr>
                        </table> 
                     </div>
                </div>
                <div class="fright aright buttoncontainer controls">
                    <input type='submit' value='Submit' class="btn red finish" onclick="return validateFinishAffiliate();" style="margin-top: 0px;height: 25px;"></input>
                    <div class="btn red next">Next</div>
                    <div class="btn red prev">Back</div>
                </div>
                </div>
            </form>
        </div>
        </div> 

    </div>
	<!-- Content 01 End -->  
    <div style="float:left; margin:0 auto; height:40px; width:1px;"></div>
    <!-- Mid End -->
</asp:Content>
