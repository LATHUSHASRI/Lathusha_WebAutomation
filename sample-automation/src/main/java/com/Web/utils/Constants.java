package com.Web.utils;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

public class Constants {

	public static final String CHROME_DRIVER_WIN = "webdriver.chrome.driver.win";
	public static final String FIREFOX_DRIVER_WIN = "webdriver.gecko.driver.win";
	public static final String IE_DRIVER_WIN = "webdriver.ie.driver.win";
	public static final String EDGE_DRIVER_WIN = "webdriver.edge.driver.win";

	public static final String CHROME_DRIVER_MAC = "webdriver.chrome.driver.mac";
	public static final String FIREFOX_DRIVER_MAC = "webdriver.gecko.driver.mac";

	public static final long EXPLICIT_TIMEOUT = 5;
	public static final long EXPLICIT_TIMEOUT_FOR_DROP_DOWNS = 5;
	public static final long TIMEOUT_FOR_DROP_DOWNS = 500;
	public static final long TIMEOUT_FOR_DROP_DOWNS_HIGH = 2000;

	public static final String CP_USERNAME = "baghya@codelantic.com";
	public static final String CP_PASSWORD = "123Qwe@#";

	public static final String SIGNUP_FIRSTNAME = "Rakitha";
	public static final String SIGNUP_LASTNAME = "Perera";
	public static final String SIGNUP_PHONECODE = "Sri Lanka";
	public static final String SIGNUP_CONTACTNO = "2077237960";
	public static final String SIGNUP_USERNAME = "rakitha@code.com";
	public static final String SIGNUP_USERNAME2 = "subagentcustomer@gmail.com";
	public static final String INVALID_SIGNUP_USERNAME = "rakitha@";
	public static final String SIGNUP_PASSWORD = "123Qwe@#";
	public static final String SIGNUP_CONFIRMPASSWORD = "123Qwe@#";
	public static final String INVALID_SIGNUP_CONFIRMPASSWORD = "123Qw";
	public static final String SIGNUP_ADDRESS = "Main Street";
	public static final String SIGNUP_CITY = "Colombo";
	public static final String SIGNUP_CITY2 = "City";
	public static final String SIGNUP_STATE = "Western";
	public static final String SIGNUP_POSTCODE = "00600";
	public static final String SIGNUP_COUNTRY = "United Kingdom";
	public static final String SIGNUP_NATIONALITY = "British";
	public static final String SIGNUP_DATEOFBIRTH = "05-03-2000";
	public static final String SIGNUP_PLACEOFBIRTH = "Moratuwa";
	public static final String SIGNUP_PLACEOFBIRTH2 = "Place";
	public static final String SIGNUP_PROMOCODE = "test123";

	public static final String SIGNUP_IDENTITYTYPE = "Driving licence";
	public static final String SIGNUP_IDENTITYNUMBER = "1234567890";
	public static final String SIGNUP_IDEXPIREDATE = "02-09-2024";
	public static final String SIGNUP_FRONTIMAGEPATH = "images/id_front.png";
	public static final String SIGNUP_BACKIMAGEPATH = "images/id_front.png";
	public static final String SIGNUP_SECONDARYIDTYPE = "Bank Statement";
	public static final String SIGNUP_SECONDARYIMAGEPATH = "images/id_front.png";


	public static final String COPORATE_COMPANYNAME = "ABC Company Limited";
	public static final String COPORATE_REGNUMBER = "BC12121";
	public static final String INVALID_COPORATE_COMPANYEMAIL = "abccompany";
	public static final String VALID_COPORATE_COMPANYEMAIL = "abccompany@abcco.com";
	public static final String COPORATE_PRIMARYCONTACTNUMBER = "1234567890";
	public static final String COPORATE_SECONDARYCONTACTNUMBER = "1234567890";
	public static final String COPORATE_STREET = "Main Street";
	public static final String COPORATE_CITY = "Nugegoda";
	public static final String COPORATE_POSTALCODE = "60012";
	public static final String COPORATE_STATE = "Western";
	public static final String COPORATE_COUNTRY = "United Kingdom";
	public static final String COPORATE_PRIMARY_COUNTRY_CODE = "Sri Lanka";
	public static final String COPORATE_SECONDARY_COUNTRY_CODE = "Sri Lanka";
	public static final String COPORATE_DOCUMENTATIONPATH = "images/id_front.png";

	public static final String emailAddress = "baghya@codelantic.com";

	public static final String SIGNIN_FORGOT_PASSWORD_EMAIL_SENT_SUCESS_MSG = "Password Reset Email Sent";

	public static final List<String> ID_TYPES_LIST = Arrays.asList("Passport", "Driving licence", "Insurance card");
	public static final List<String> SEC_ID_TYPES_LIST = Arrays.asList("Utility Bills", "Council Tax Bill",
			"Bank Statement");

	public static final String MOT_BANK_DEPOSIT = "Bank Deposit";
	public static final String MOT_CASH_DEPOSIT = "Cash Pickup";

	public static final String PAYMODE_BANK_DEPOSIT = "Bank Deposit";
	public static final String PAYMODE_DEBIT_CARD = "Debit Card";

	public static final String MT_SET1_SENDER_FULL_NAME = "mfx mlx";
	public static final String MT_SET1_SENDER_FIRST_NAME = "mfx";
	public static final String MT_SET1_SENDER_LAST_NAME = "mlx";
	public static final String MT_SET1_SENDER_TEL_LAND = "1234456";
	public static final String MT_SET1_SENDER_TEL_MOBILE = "1234456";
	public static final String MT_SET1_SENDER_EMAIL = "baghya@codelantic.com";
	public static final String MT_SET1_SENDER_ADRS = "mystreet";
	public static final String MT_SET1_SENDER_ID_TYPE = "Passport";
	public static final String MT_SET1_SENDER_ID_NO = "B15440273232131";
	public static final String MT_SET1_SENDER_PAY_MODE = "Bank Deposit";

	public static final String MT_SET1_SENDING_CNTRY = "GBP";
	public static final String MT_SET1_RECIEVING_CNTRY = "THB";
	public static final String MT_SET1_SENDING_AMOUNT = "10";
	public static final String MT_SET1_RECIEVING_AMOUNT = "100.00";
	public static final String MT_SET1_BENI_NAME = "ben ben";
	public static final String MT_SET1_RECIPIENT_CNTRY = "Thailand";

	public static final String NEW_BENI_FN = "bb115";
	public static final String NEW_BENI_lN = "mm115";
	public static final String NEW_BENI_cN = "1234568";
	public static final String NEW_BENI_ADRS = "mystreet";
	public static final String NEW_BENI_FULL_NAME = NEW_BENI_FN + " " + NEW_BENI_lN;

	public static final String NEW_BANK_BN = "TEST BANK";
	public static final String NEW_BANK_BACC = "1111111111111111111111";
	public static final String NEW_BANK_BB = "TEST BRANCH";
	public static final String NEW_BANK_BC = "12345QWERT";
	public static final String NEW_BANK_SFT = "QWERT12345";

	public static final String MT_SET1_REF = "Testing Reference";

	public static final String MT_ACC_DETAILS_PAYMENT_NOTE = "Please make a payment of";
	public static final String MT_INVOICE_SUCCESS_NOTIFICATION = "Save transaction successfully";
	public static final String MT_ACCOUNT_DETAILS_SUCCESS_NOTIFICATION = "Successfully Completed Transaction";

	public static final String TRANSACTIONS_STATUS_ACCEPTED = "Accepted";
	public static final String TRANSACTIONS_STATUS_CREATED = "Created";

	public static final String NOTIFICATION_RECIPIENT_COUNTRY_EMPTY = "Recipient Country cannot be empty";
	public static final String NOTIFICATION_RECIPIENT_COUNTRY_SELECT = "Recipient Country must be Selected";
	public static final String NOTIFICATION_MODE_OF_TRANSFER_EMPTY = "Mode of Transfer cannot be empty";
	public static final String NOTIFICATION_SEND_AMOUNT_EMPTY = "Send Amount cannot be empty";
	public static final String NOTIFICATION_PAYMENT_MODE_EMPTY = "Payment Modes cannot be empty";
	public static final String NOTIFICATION_SEND_AMOUNT_EMPTY_N = "Minimum sending Amount is 10.00";

	public static final String PRIMARY_IDENTITY_DETAILS_FRONTIMAGEPATH = "C:\\Users\\USER\\Downloads\\id_front.png";
	public static final String PRIMARY_IDENTITY_DETAILS_BACKIMAGEPATH = "C:\\Users\\USER\\Downloads\\id_back.png";

	public static final long WAITING_TIME_LESS = 1000;
	public static final long WAITING_TIME_MEDIUM = 2000;
	public static final long WAITING_TIME_AVERAGE = 3000;
	public static final long WAITING_TIME_HIGH = 4000;
	public static final long WAITING_TIME_OVER_HIGH = 5000;
	public static final long WAITING_TIME_OVER_DOUBLE_HIGH = 10000;

    public static final CharSequence AGENT_CUSTOMER_CURRENT_PASSWORD = "Test_1user";
	public static final CharSequence AGENT_CUSTOMER_INVALID_PASSWORD ="Test" ;
	public static final CharSequence AGENT_CUSTOMER_NEW_PASSWORD = "Test_1user";
}
