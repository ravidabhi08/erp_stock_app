import '/design/utils/design_utils.dart';

class GetTranslationModel {
  String? direction;
  GetTranslationDataModel? translationData;

  GetTranslationModel({this.direction, this.translationData});

  GetTranslationModel.fromJson(Map<String, dynamic> json) {
    direction = json['direction'];
    translationData =
        json['translation_data'] != null
            ? GetTranslationDataModel.fromMap(json['translation_data'])
            : null;
  }

  @override
  String toString() =>
      'GetTranslationModel(direction: $direction, translationData: $translationData)';
}

class GetTranslationDataModel {
  String years;
  String aboutAYear;
  String months;
  String aboutAMonth;
  String aDay;
  String hours;
  String aboutAnHour;
  String minutes;
  String aMinute;
  String aMoment;
  String ago;
  String fromNow;
  String pleaseSelectCustomer;
  String itemsSelected;
  String secondHalf;
  String firstHalf;
  String select;
  String selectItems;
  String internalErrorOccurredPleaseTryAgainLater;
  String somethingWentWrongPleaseTryAgain;
  String goToSettingsAndEnableTheLocationPermissionTapToOpenSettings;
  String goToSettingsAndGrantAlwaysUseLocationPermissionTapToOpenSettings;
  String weAreSorryForTheInconveniencePleaseLoginAgain;
  String unableToProceedYouAreOutsideTheAuthorisedLocationForThisAction;
  String yourSessionHasExpiredPleaseLoginAgain;
  String notifications;
  String year;
  String month;
  String noDataAvailable;
  String viewAll;
  String back;
  String quantity;
  String attachments;
  String selectDeliveryDay;
  String selectItem;
  String selectCustomer;
  String createOrder;
  String delivered;
  String draft;
  String rejected;
  String approved;
  String total;
  String discount;
  String subTotal;
  String totalTax;
  String taxDiscount;
  String totalUnpaid;
  String annualBilling;
  String address;
  String qty;
  String itemCode;
  String createdBy;
  String expectedDelivery;
  String commentsHere;
  String comments;
  String updateOrder;
  String orderDetails;
  String amount;
  String items;
  String customerName;
  String searchByOrderIDOrCustomerName;
  String selectVisitType;
  String updateVisit;
  String employee;
  String visitDetails;
  String visits;
  String balance;
  String credit;
  String debit;
  String toDate;
  String fromDate;
  String selectPartyType;
  String selectPartyName;
  String noTransaction;
  String filterTransaction;
  String lOP;
  String totalWorkDays;
  String effectiveWorkDays;
  String deductions;
  String grossPay;
  String deduction;
  String earnings;
  String basic;
  String daySelection;
  String period;
  String halfDay;
  String endDay;
  String startDay;
  String addHalfDay;
  String selectLeaveType;
  String newLeaveRequest;
  String updateLeaveRequest;
  String leaveRequests;
  String openRequests;
  String myLeaves;
  String selectYear;
  String holidayList;
  String uploadExpenseBill;
  String typeAmount;
  String typeReasonHere;
  String selectExpenseType;
  String selectDay;
  String apply;
  String expenseHistory;
  String myExpenses;
  String fileAlreadyDownloaded;
  String downloadCompletedClickToOpen;
  String delete;
  String download;
  String uploadDocument;
  String documents;
  String late;
  String onTime;
  String totalDays;
  String workDuration;
  String checkOut;
  String checkIn;
  String create;
  String cancel;
  String status;
  String priority;
  String selectAssignTo;
  String assignTo;
  String subject;
  String selectProject;
  String optional;
  String createNewTask;
  String send;
  String activity;
  String markAsInProgress;
  String markAsCompleted;
  String assignedBy;
  String assignedTo;
  String description;
  String dueDate;
  String completed;
  String working;
  String pending;
  String done;
  String updateProgress;
  String completedTasks;
  String myTasks;
  String allTasks;
  String newPassword;
  String currentPassword;
  String changePassword;
  String logout;
  String doYouReallyWantToLogOut;
  String emergencyContactNumber;
  String contactNumber;
  String personalEmailAddress;
  String officialEmailAddress;
  String gender;
  String dateOfBirth;
  String dateOfJoining;
  String employeeID;
  String myProfile;
  String upcomingActivity;
  String createTask;
  String createVisit;
  String applyLeave;
  String applyExpense;
  String contacts;
  String selectContact;
  String yesterday;
  String today;
  String commentHere;
  String anonymus;
  String messages;
  String yourTask;
  String whatWouldYouLikeToDo;
  String pendingRequests;
  String attendanceDetails;
  String leaveBalance;
  String salaryDetails;
  String creditedOn;
  String workDay;
  String viewSalarySlip;
  String allotted;
  String nA;
  String days;
  String dayOff;
  String absent;
  String present;
  String expense;
  String leave;
  String payroll;
  String document;
  String holiday;
  String attendance;
  String transactions;
  String orders;
  String visit;
  String goodEvening;
  String goodAfternoon;
  String goodMorning;
  String subscriptionExpired;
  String youStartedYourDayAt;
  String youReNotCheckInYetToday;
  String retry;
  String checkout;
  String checkin;
  String skipForNow;
  String update;
  String weHaveAddedNewFeaturesAndFixSomeBugsToMakeYourExperienceSeamless;
  String appUpdateAvailable;
  String submit;
  String mobileNumber;
  String search;
  String email;
  String fullName;
  String pleaseFillOutBelowDetails;
  String wantToTryOutOnYourServer;
  String continueAsDemoUser;
  String tryOurDemoApp;
  String login;
  String password;
  String username;
  String enterWorkplaceUrl;
  String enterBelowDetailsToContinue;
  String letSSignYouIn;
  String allow;
  String donTAllow;
  String
  eSSUsesYourLocationToValidateTheirWorkAttendanceItIsValidatedWhenEmployeesDoCheckInAndCheckOut;
  String allowESSToUseYourLocation;
  String selectLanguage;
  String upgradeToPremium;
  String upcomingLeaves;
  String pastLeaves;
  String cameraPermissionIsRequired;
  String payment;
  String pettyExpenses;
  String timesheet;
  String issue;
  String internetConnectionIsRequired;
  String noDataToSync;
  String whoaThereWereNotTimeTravelersYetGiveItAMinuteBeforeTryingAgain;
  String holdYourHorsesLetsSavorThePresentMomentBeforeLeapingIntoTheFuture;
  String feelingRestlessHuhTakeABreatherAndComeBackInAJiffy;
  String oopsLooksLikeYoureTryingToBreakTheLandSpeedRecordForCheckInsSlowAndSteadyWinsTheRace;
  String easyThereSpeedRacerWereOnOfficeTimeNotWarpSpeedTime;
  String attentionTimeEnthusiastsRememberPatienceIsAVirtueGiveItAMomentToCatchUp;
  String warningRapidCheckInsDetectedPleaseRefrainFromTimeHoppingAntics;
  String looksLikeSomeonesEagerToGetGoingTakeAChillPillAndWaitASec;
  String braceYourselfRapidCheckInsMayCauseTimeSpaceContinuumDisturbances;
  String holdOnTightOurServersAreCatchingUpWithYourEnthusiasmForCheckIns;
  String pleaseSelectPartyTypeFirst;
  String clear;
  String close;
  String searchByNameOrMobileNumber;
  String noCustomersFound;
  String noProjectsFound;
  String paymentEntry;
  String pettyExpense;
  String no;
  String found;
  String enterERPCode;
  String required;
  String itSeemsYoureNotYetRegisteredWithUsRegisterUsingBelowButton;
  String registerForESS;
  String eRPCode;
  String workplaceURL;
  String youCanOnlyUpload5PhotosAtATime;
  String youCanOnlyUpload1VideoAtATime;
  String pleaseEnterSomeTextOrSelectSomePhotos;
  String postingInProgressUploadingInBackground;
  String createPost;
  String createPoll;
  String deletePost;
  String areYouSureYouWantToDeleteThisPost;
  String likedBy;
  String images;
  String author;
  String comment;
  String noTimesheetEntryFound;
  String view;
  String action;
  String approvalRequests;
  String updateIssue;
  String newIssue;
  String customer;
  String project;
  String issueType;
  String save;
  String filterIssue;
  String noIssueEntryFound;
  String dateRange;
  String date;
  String noOrdersFound;
  String filterOrders;
  String paidAmount;
  String referenceNo;
  String selectNamingSeries;
  String namingSeries;
  String selectPaymentType;
  String paymentType;
  String selectPaymentMode;
  String paymentMode;
  String selectCompany;
  String company;
  String partyType;
  String party;
  String selectAccountPaidFrom;
  String accountPaidFrom;
  String selectAccountPaidTo;
  String accountPaidTo;
  String referenceDate;
  String noReferencesFound;
  String reference;
  String outstanding;
  String allocate;
  String totalAllocated;
  String totalUnallocated;
  String noPaymentEntryFound;
  String filterPaymentEntries;
  String paymentEntries;
  String type;
  String postingDate;
  String selectStatus;
  String supplier;
  String selectExpenseAccount;
  String expenseAccount;
  String selectCostCenter;
  String selectWarehouse;
  String warehouse;
  String costCenter;
  String selectPayment;
  String modeOfPayment;
  String pettyDetails;
  String filterPettyExpense;
  String noPettyEntryFound;
  String selectModeOfPayment;
  String mode;
  String selectTask;
  String task;
  String note;
  String timesheets;
  String filterTimesheet;
  String totalHours;
  String updateTask;
  String clearFilters;
  String applyFilters;
  String success;
  String info;
  String error;
  String events;
  String feed;
  String filterTasks;
  String issueDetails;
  String enableLockScreen;
  String enableFaceID;
  String enableFingerprint;
  String paymentDetails;
  String newPaymentEntry;
  String updatePaymentEntry;
  String showless;
  String beTheFirstToComment;
  String leaveYourThoughtsHere;
  String beTheFirstToPost;
  String deletePaymentEntry;
  String areYouSureYouWantToDeleteThisPaymentEntry;
  String timesheetDetails;
  String updateTimesheet;
  String newTimesheet;
  String activityType;
  String fromTime;
  String toTime;
  String hrs;
  String invalidHours;
  String salarySlip;
  String thatsAllYouGot;
  String noItemsFound;
  String partyBalance;
  String next;
  String appearance;
  String themeMode;
  String employeeSelfServiceCustomAppIsNotInstalledInBackend;
  String biometricAuthenticationEnabled;
  String thankYouWeWillReachOutToYouShortly;
  String youHaveReachedYourFavoriteLimit6;
  String documentActionListNotFound;
  String notFound;
  String enable;
  String enableBiometricAuthentication;
  String easilyLogInWithYourFingerprintOrFaceForAddedSecurityAndConvenience;
  String noApprovalRequestsFound;
  // ignore: non_constant_identifier_names
  String Continue;
  String add;
  String personalDetails;
  String educationDetails;
  String bankDetails;
  String parentName;
  String parentContact;
  String qualification;
  String schoolUniversity;
  String passingYear;
  String bankName;
  String accountNumber;
  String iban;
  String lightThemes;
  String darkThemes;
  String viewLess;
  String viewMore;
  String selectTop6Shortcuts;
  String like;
  String showOnlyCreatedByMe;
  String noQuotationFound;
  String quotation;
  String quotationDetails;
  String validTill;
  String filterQuotations;
  String quotationTo;
  String expenseClaim;
  String noExpensesAdded;
  String selectLead;
  String selectValidTill;
  String expenses;
  String terms;
  String addItemDetails;
  String updateExpense;
  String addExpense;
  String newExpenseItem;
  String editExpenseItem;
  String pendingExpense;
  String filter;
  String expenseClaimed;
  String deleteItems;
  String addAnotherItem;
  String createQuotation;
  String documentView;
  String leaveHistory;
  String updateQuotation;
  String upgrade;
  String home;
  String tasks;
  String updates;
  String profile;
  String posts;
  String post;
  String likes;
  String noTasksOnTheHorizon;
  String addATaskOrAskManagementToAddANewTaskToYourBucket;
  String wantToUpgradeWithPremiumFeatures;
  String updateStatus;
  String actions;
  String addItem;
  String scanItem;
  String addItems;
  String previous;
  String addQuickTask;
  String manageQuickTask;
  String enterTodayTask;
  String addTask;
  String newMessages;
  String progress;
  String timeTracking;
  String stopTracker;
  String taskDetails;
  String todaysTasks;
  String createdByMe;
  String unlockNow;
  String authenticationRequired;
  String becauseTheOnlyPersonSeeingYourDataShouldBeYou;
  String yourPositionInCompany;
  String country;
  String whichSoftwareAreYouUsing;
  String areYouCurrentlyUsingERPNext;
  String enterOdometerReading;
  String enterInKM;
  String yourTodaysTask;
  String noPendingTaskFound;
  String attendanceRequest;
  String newAttendanceRequest;
  String updateAttendanceRequest;
  String typeExplanationHere;
  String includeHolidays;
  String selectReason;
  String selectShiftType;
  String deleteAttendanceRequest;
  String areYouSureYouWantToDeleteThisAttendanceRequest;
  String deleteTimesheet;
  String areYouSureYouWantToDeleteThisTimesheet;
  String leaveDetails;
  String leaveDuration;
  String from;
  String to;
  String appliedOn;
  String leaveType;
  String reason;
  String stockEntry;
  String stock;
  String totalStockValue;
  String cancelLeave;

  GetTranslationDataModel({
    this.reason = "Reason",
    this.cancelLeave = "Cancel Leave",
    this.appliedOn = "Applied on",
    this.leaveType = "Leave Type",
    this.updateLeaveRequest = "Update Leave Request",
    this.from = "From",
    this.to = "To",
    this.leaveDuration = "Leave Duration",
    this.leaveDetails = "Leave Details",
    this.years = "years",
    this.aboutAYear = "about a year",
    this.months = "months",
    this.aboutAMonth = "about a month",
    this.aDay = "a day",
    this.hours = "hours",
    this.aboutAnHour = "about an hour",
    this.minutes = "minutes",
    this.aMinute = "a minute",
    this.aMoment = "a moment",
    this.ago = "ago",
    this.fromNow = "from now",
    this.pleaseSelectCustomer = "Please select customer",
    this.itemsSelected = "Items selected",
    this.secondHalf = "Second Half",
    this.firstHalf = "First Half",
    this.select = "Select",
    this.selectItems = "Select Items",
    this.internalErrorOccurredPleaseTryAgainLater =
        "Internal Error occurred, please try again later !",
    this.somethingWentWrongPleaseTryAgain = "Something went wrong, please try again !",
    this.goToSettingsAndEnableTheLocationPermissionTapToOpenSettings =
        'Go to settings and enable the location permission !!! Tap to open settings.',
    this.goToSettingsAndGrantAlwaysUseLocationPermissionTapToOpenSettings =
        'Go to settings and grant "always use" location permission !!! Tap to open settings.',
    this.weAreSorryForTheInconveniencePleaseLoginAgain =
        "We are sorry for the inconvenience, please login again !",
    this.unableToProceedYouAreOutsideTheAuthorisedLocationForThisAction =
        "Unable to proceed: You are outside the authorised location for this action.",
    this.yourSessionHasExpiredPleaseLoginAgain = "Your session has expired, please login again !",
    this.notifications = "Notifications",
    this.year = "Year",
    this.month = "Month",
    this.noDataAvailable = "No Data Available",
    this.viewAll = "View all",
    this.back = "Back",
    this.quantity = "Quantity",
    this.attachments = "Attachments",
    this.selectDeliveryDay = "Select Delivery Day",
    this.selectItem = "Select Item",
    this.selectCustomer = "Select Customer",
    this.createOrder = "Create Order",
    this.delivered = "Delivered",
    this.draft = "Draft",
    this.rejected = "Rejected",
    this.approved = "Approved",
    this.total = "Total :",
    this.discount = "Discount :",
    this.subTotal = "Sub Total :",
    this.totalTax = "Total Tax :",
    this.taxDiscount = "Tax Discount",
    this.totalUnpaid = "Total Unpaid",
    this.annualBilling = "Annual Billing",
    this.address = "Address",
    this.qty = "Qty",
    this.itemCode = "Item Code",
    this.createdBy = "Created By",
    this.expectedDelivery = "Expected Delivery",
    this.commentsHere = "Comments Here...",
    this.comments = "Comments",
    this.updateOrder = "Update Order",
    this.orderDetails = "Order Details",
    this.amount = "Amount",
    this.items = "Items",
    this.customerName = "Customer Name",
    this.searchByOrderIDOrCustomerName = "Search by Order ID or Customer Name",
    this.selectVisitType = "Select Visit Type",
    this.updateVisit = "Update Visit",
    this.employee = "Employee",
    this.visitDetails = "Visit Details",
    this.visits = "Visits",
    this.balance = "Balance",
    this.credit = "Credit",
    this.debit = "Debit",
    this.toDate = "To Date",
    this.fromDate = "From Date",
    this.selectPartyType = "Select Party Type",
    this.selectPartyName = "Select Party Name",
    this.noTransaction = "No Transaction",
    this.filterTransaction = "Filter Transaction",
    this.lOP = "LOP",
    this.totalWorkDays = "Total Work Days",
    this.effectiveWorkDays = "Effective Work Days",
    this.deductions = "Deductions",
    this.grossPay = "Gross Pay",
    this.deduction = "Deduction",
    this.earnings = "Earnings",
    this.basic = "Basic",
    this.daySelection = "Day Selection",
    this.period = "Period",
    this.halfDay = "Half Day",
    this.endDay = "End Day",
    this.startDay = "Start Day",
    this.addHalfDay = "Add Half Day",
    this.selectLeaveType = "Select Leave Type",
    this.newLeaveRequest = "New Leave Request",
    this.leaveRequests = "Leave Requests",
    this.openRequests = "Open Requests",
    this.myLeaves = "My Leaves",
    this.selectYear = "Select Year",
    this.holidayList = "Holiday List",
    this.uploadExpenseBill = "Upload Expense Bill",
    this.typeAmount = "Type Amount",
    this.typeReasonHere = "Type Reason Here...",
    this.selectExpenseType = "Select Expense Type",
    this.selectDay = "Select Day",
    this.apply = "Apply",
    this.expenseHistory = "Expense History",
    this.myExpenses = "My Expenses",
    this.fileAlreadyDownloaded = "File Already Downloaded",
    this.downloadCompletedClickToOpen = "Download Completed, Click to Open",
    this.delete = "Delete",
    this.download = "Download",
    this.uploadDocument = "Upload Document",
    this.documents = "Documents",
    this.late = "Late",
    this.onTime = "On Time",
    this.totalDays = "Total Days",
    this.workDuration = "Work Duration",
    this.checkOut = "Check Out",
    this.checkIn = "Check In",
    this.create = "Create",
    this.cancel = "Cancel",
    this.status = "Status",
    this.priority = "Priority",
    this.selectAssignTo = "Select Assign To",
    this.assignTo = "Assign To",
    this.subject = "Subject",
    this.selectProject = "Select Project",
    this.optional = "Optional",
    this.createNewTask = "Create New Task",
    this.send = "Send",
    this.activity = "Activity",
    this.markAsInProgress = "Mark as In Progress",
    this.markAsCompleted = "Mark as Completed",
    this.assignedBy = "Assigned By",
    this.assignedTo = "Assigned To",
    this.description = "Description",
    this.dueDate = "Due Date",
    this.completed = "Completed",
    this.working = "Working",
    this.pending = "Pending",
    this.done = "Done",
    this.updateProgress = "Update Progress",
    this.completedTasks = "Completed Tasks",
    this.myTasks = "My Tasks",
    this.allTasks = "All Tasks",
    this.newPassword = "New Password",
    this.currentPassword = "Current Password",
    this.changePassword = "Change Password",
    this.logout = "Logout",
    this.doYouReallyWantToLogOut = "do you really want to logout ?",
    this.emergencyContactNumber = "Emergency Contact Number",
    this.contactNumber = "Contact Number",
    this.personalEmailAddress = "Personal Email Address",
    this.officialEmailAddress = "Official Email Address",
    this.gender = "Gender",
    this.dateOfBirth = "Date of Birth",
    this.dateOfJoining = "Date of Joining",
    this.employeeID = "Employee ID",
    this.myProfile = "My Profile",
    this.upcomingActivity = "Upcoming Activity",
    this.createTask = "Create Task",
    this.createVisit = "Create Visit",
    this.applyLeave = "Apply Leave",
    this.applyExpense = "Apply Expense",
    this.contacts = "Contacts",
    this.selectContact = "Select Contact",
    this.yesterday = "Yesterday",
    this.today = "Today",
    this.commentHere = "Comment Here...",
    this.anonymus = "Anonymous",
    this.messages = "Messages",
    this.yourTask = "Your Task",
    this.whatWouldYouLikeToDo = "What would you like to do?",
    this.pendingRequests = "Pending Requests",
    this.attendanceDetails = "Attendance Details",
    this.leaveBalance = "Leave Balance",
    this.salaryDetails = "Salary Details",
    this.creditedOn = "Credited On",
    this.workDay = "Work Day",
    this.viewSalarySlip = "View Salary Slip",
    this.allotted = "Allotted",
    this.nA = "-",
    this.days = "Days",
    this.dayOff = "Day Off",
    this.absent = "Absent",
    this.present = "Present",
    this.expense = "Expense",
    this.leave = "Leave",
    this.payroll = "Payroll",
    this.document = "Document",
    this.holiday = "Holiday",
    this.attendance = "Attendance",
    this.transactions = "Transactions",
    this.orders = "Orders",
    this.visit = "Visit",
    this.goodEvening = "Good Evening,",
    this.goodAfternoon = "Good Afternoon,",
    this.goodMorning = "Good Morning,",
    this.subscriptionExpired = "Subscription Expired.",
    this.youStartedYourDayAt = "You started your day at.",
    this.youReNotCheckInYetToday = "You're not check in yet today.",
    this.retry = "Retry",
    this.checkout = "Check-out",
    this.checkin = "Check-in",
    this.skipForNow = "Skip for now",
    this.update = "Update",
    this.weHaveAddedNewFeaturesAndFixSomeBugsToMakeYourExperienceSeamless =
        "We have added new features and fix some bugs to make your experience seamless.",
    this.appUpdateAvailable = "App Update Available",
    this.submit = "Submit",
    this.mobileNumber = "Mobile Number",
    this.search = "Search",
    this.email = "Email",
    this.fullName = "Full Name",
    this.pleaseFillOutBelowDetails = "Please fill out below details",
    this.wantToTryOutOnYourServer = "Want to try out on your server ?",
    this.continueAsDemoUser = "Continue as Demo User",
    this.tryOurDemoApp = "Try Our Demo App",
    this.login = "Login",
    this.password = "Password",
    this.username = "Username",
    this.enterWorkplaceUrl = "Enter Workplace URL",
    this.enterBelowDetailsToContinue = "Enter below details to continue..",
    this.letSSignYouIn = "Let's sign you in",
    this.allow = "Allow",
    this.donTAllow = "Don't Allow",
    this.allowESSToUseYourLocation = 'Allow "$appName" to use your location?',
    this.eSSUsesYourLocationToValidateTheirWorkAttendanceItIsValidatedWhenEmployeesDoCheckInAndCheckOut =
        "$appName uses your location to validate their work attendance. It is validated when employees do check-in and check-out.",
    this.selectLanguage = "Select Language",
    this.upgradeToPremium = "Upgrade to Premium",
    this.upcomingLeaves = "Upcoming Leaves",
    this.pastLeaves = "Past Leaves",
    this.cameraPermissionIsRequired = "Camera permission is required !!!",
    this.payment = "Payment",
    this.pettyExpenses = "Petty Expenses",
    this.timesheet = "Timesheet",
    this.issue = "Issue",
    this.internetConnectionIsRequired = "Internet connection is required !!!",
    this.noDataToSync = "No data to sync",
    this.whoaThereWereNotTimeTravelersYetGiveItAMinuteBeforeTryingAgain =
        "Whoa there! ⏳ We're not time travelers yet. Give it a minute before trying again!",
    this.holdYourHorsesLetsSavorThePresentMomentBeforeLeapingIntoTheFuture =
        "Hold your horses! 🐎 Let's savor the present moment before leaping into the future.",
    this.feelingRestlessHuhTakeABreatherAndComeBackInAJiffy =
        "Feeling restless, huh? 🤔 Take a breather and come back in a jiffy!",
    this.oopsLooksLikeYoureTryingToBreakTheLandSpeedRecordForCheckInsSlowAndSteadyWinsTheRace =
        "Oops! 🙊 Looks like you're trying to break the land speed record for check-ins. Slow and steady wins the race!",
    this.easyThereSpeedRacerWereOnOfficeTimeNotWarpSpeedTime =
        "Easy there, speed racer! 🏎️ We're on office time, not warp speed time.",
    this.attentionTimeEnthusiastsRememberPatienceIsAVirtueGiveItAMomentToCatchUp =
        "Attention, time enthusiasts! ⏰ Remember, patience is a virtue. Give it a moment to catch up.",
    this.warningRapidCheckInsDetectedPleaseRefrainFromTimeHoppingAntics =
        "Warning: Rapid check-ins detected! ⚠️ Please refrain from time-hopping antics.",
    this.looksLikeSomeonesEagerToGetGoingTakeAChillPillAndWaitASec =
        "Looks like someone's eager to get going! 🚀 Take a chill pill and wait a sec.",
    this.braceYourselfRapidCheckInsMayCauseTimeSpaceContinuumDisturbances =
        "Brace yourself! Rapid check-ins may cause time-space continuum disturbances.",
    this.holdOnTightOurServersAreCatchingUpWithYourEnthusiasmForCheckIns =
        "Hold on tight! 🎢 Our servers are catching up with your enthusiasm for check-ins.",
    this.pleaseSelectPartyTypeFirst = "Please select party type first !",
    this.clear = "Clear",
    this.close = "Close",
    this.searchByNameOrMobileNumber = "Search by name or mobile number",
    this.noCustomersFound = "No Customers Found !",
    this.noProjectsFound = "No Projects Found !!",
    this.paymentEntry = "Payment Entry",
    this.pettyExpense = "Petty Expense",
    this.no = "No",
    this.found = "Found !",
    this.enterERPCode = "Enter ERP Code",
    this.required = "required!",
    this.itSeemsYoureNotYetRegisteredWithUsRegisterUsingBelowButton =
        "It seems you're not yet registered with us. Register using below button.",
    this.registerForESS = "Register for ESS",
    this.eRPCode = "ERP Code",
    this.workplaceURL = "Workplace URL",
    this.youCanOnlyUpload5PhotosAtATime = "You can only upload 5 photos at a time",
    this.youCanOnlyUpload1VideoAtATime = "You can only upload 1 video at a time",
    this.pleaseEnterSomeTextOrSelectSomePhotos = "Please enter some text or select some photos",
    this.postingInProgressUploadingInBackground = "Posting in progress, uploading in background...",
    this.createPost = "Create Post",
    this.createPoll = "Create Poll",
    this.deletePost = "Delete Post",
    this.areYouSureYouWantToDeleteThisPost = "Are you sure you want to delete this post?",
    this.likedBy = "Liked By",
    this.images = "Images",
    this.author = "Author",
    this.comment = "Comment",
    this.noTimesheetEntryFound = "No Timesheet Entry Found !",
    this.view = "View",
    this.action = "Action",
    this.approvalRequests = "Approval Requests",
    this.updateIssue = "Update Issue",
    this.newIssue = "New Issue",
    this.customer = "Customer",
    this.project = "Project",
    this.issueType = "Issue Type",
    this.save = "Save",
    this.filterIssue = "Filter Issue",
    this.noIssueEntryFound = "No Issue Entry Found !",
    this.dateRange = "Date Range",
    this.date = "Date",
    this.noOrdersFound = "No Orders Found !",
    this.filterOrders = "Filter Orders",
    this.paidAmount = "Paid Amount*",
    this.referenceNo = "Reference no.",
    this.selectNamingSeries = "Select Naming Series",
    this.namingSeries = "Naming Series",
    this.selectPaymentType = "Select Payment Type",
    this.paymentType = "Payment Type*",
    this.selectPaymentMode = "Select Payment Mode",
    this.paymentMode = "Payment Mode",
    this.selectCompany = "Select Company",
    this.company = "Company*",
    this.partyType = "Party Type*",
    this.party = "Party*",
    this.selectAccountPaidFrom = "Select Account Paid From",
    this.accountPaidFrom = "Account Paid From*",
    this.selectAccountPaidTo = "Select Account Paid To",
    this.accountPaidTo = "Account Paid To*",
    this.referenceDate = "Reference Date",
    this.noReferencesFound = "No References Found",
    this.reference = "Reference",
    this.outstanding = "Outstanding",
    this.allocate = "Allocate",
    this.totalAllocated = "Total Allocated",
    this.totalUnallocated = "Total Unallocated",
    this.noPaymentEntryFound = "No Payment Entry Found !",
    this.filterPaymentEntries = "Filter Payment Entries",
    this.paymentEntries = "Payment Entries",
    this.type = "Type",
    this.postingDate = "Posting Date",
    this.selectStatus = "Select Status",
    this.supplier = "Supplier",
    this.selectExpenseAccount = "Select Expense Account",
    this.expenseAccount = "Expense Account*",
    this.selectCostCenter = "Select Cost Center",
    this.selectWarehouse = "Select Warehouse",
    this.warehouse = "Warehouse",
    this.costCenter = "Cost Center",
    this.selectPayment = "Select Payment",
    this.modeOfPayment = "Mode Of Payment*",
    this.pettyDetails = "Petty Details",
    this.filterPettyExpense = "Filter Petty Expense",
    this.noPettyEntryFound = "No Petty Entry Found !",
    this.selectModeOfPayment = "Select Mode Of Payment",
    this.mode = "Mode",
    this.selectTask = "Select Task",
    this.task = "Task",
    this.note = "Note",
    this.timesheets = "Timesheets",
    this.filterTimesheet = "Filter Timesheet",
    this.totalHours = "Total Hours:",
    this.updateTask = "Update Task",
    this.clearFilters = "Clear Filters",
    this.applyFilters = "Apply Filters",
    this.success = "Success !",
    this.info = "Info !",
    this.error = "Error !",
    this.events = "Events",
    this.feed = "Feed",
    this.filterTasks = "Filter Tasks",
    this.issueDetails = "Issue Details",
    this.enableLockScreen = "Enable Lock Screen",
    this.enableFaceID = "Enable Face ID",
    this.enableFingerprint = "Enable FingerprintD",
    this.paymentDetails = "Payment Details",
    this.newPaymentEntry = "New Payment Entry",
    this.updatePaymentEntry = "Update Payment Entry",
    this.showless = "show less",
    this.beTheFirstToComment = "Be the first to comment 💬",
    this.leaveYourThoughtsHere = "Leave your thoughts here...",
    this.beTheFirstToPost = "Be the first to post 📝",
    this.deletePaymentEntry = "Delete Payment Entry ?",
    this.areYouSureYouWantToDeleteThisPaymentEntry =
        "Are you sure you want to delete this payment entry ?",
    this.timesheetDetails = "Timesheet Details",
    this.updateTimesheet = "Update Timesheet",
    this.newTimesheet = "New Timesheet",
    this.activityType = "Activity Type",
    this.fromTime = "From Time*",
    this.toTime = "To Time*",
    this.hrs = "Hrs",
    this.invalidHours = "Invalid Hours",
    this.salarySlip = "Salary Slip",
    this.thatsAllYouGot = "That's all you got.",
    this.noItemsFound = "No Items Found 😕!",
    this.partyBalance = "Party Balance:",
    this.next = "Next",
    this.appearance = "Appearance",
    this.themeMode = "Theme Mode",
    this.employeeSelfServiceCustomAppIsNotInstalledInBackend =
        "Employee Self Service custom app is not installed in backend !!!",
    this.biometricAuthenticationEnabled = "Biometric Authentication Enabled",
    this.thankYouWeWillReachOutToYouShortly = "Thank you. We will reach out to you shortly.",
    this.youHaveReachedYourFavoriteLimit6 = "You've reached your favorite limit (6).",
    this.documentActionListNotFound = "Document action list not found!",
    this.notFound = "Not found !!!",
    this.enable = "Enable",
    this.enableBiometricAuthentication = "Enable Biometric Authentication",
    this.easilyLogInWithYourFingerprintOrFaceForAddedSecurityAndConvenience =
        "Easily log in with your fingerprint or face for added security and convenience.",
    this.noApprovalRequestsFound = "No Approval Requests Found !",
    this.Continue = "Continue",
    this.add = "Add",
    this.personalDetails = "Personal Details",
    this.educationDetails = "Education Details",
    this.bankDetails = "Bank Details",
    this.parentName = "Parent Name",
    this.parentContact = "Parent Contact",
    this.qualification = "Qualification",
    this.schoolUniversity = "School / University",
    this.passingYear = "Passing Year",
    this.bankName = "Bank Name",
    this.accountNumber = "Account Number",
    this.iban = "IBAN",
    this.lightThemes = "Light Themes",
    this.darkThemes = "Dark Themes",
    this.viewLess = "View Less",
    this.viewMore = "View More",
    this.selectTop6Shortcuts = "Select Top 6 Shortcuts",
    this.like = "Like",
    this.showOnlyCreatedByMe = "Show only created by me",
    this.noQuotationFound = "No Quotations Found !",
    this.quotation = "Quotation",
    this.quotationDetails = "Quotation Details",
    this.validTill = "Valid Till",
    this.filterQuotations = "Filter Quotations",
    this.quotationTo = "Quotation To",
    this.expenseClaim = "Expense Claim",
    this.noExpensesAdded = "No expenses added",
    this.selectLead = "Select Lead",
    this.selectValidTill = "Select Valid Till",
    this.expenses = "Expenses",
    this.terms = "Terms",
    this.addItemDetails = "Add Item Details",
    this.updateExpense = "Update Expense",
    this.addExpense = "Add Expense",
    this.newExpenseItem = "New Expense Item",
    this.editExpenseItem = "Edit Expense Item",
    this.pendingExpense = "Pending Expense",
    this.filter = "Filter",
    this.expenseClaimed = "Expense Claimed",
    this.deleteItems = "Delete Items",
    this.addAnotherItem = "Add Another Item",
    this.createQuotation = "Create Quotation",
    this.documentView = "Document View",
    this.leaveHistory = "Leave History",
    this.updateQuotation = "Update Quotation",
    this.upgrade = "Upgrade",
    this.home = "Home",
    this.tasks = "Tasks",
    this.updates = "Updates",
    this.profile = "Profile",
    this.posts = "Posts",
    this.post = "Post",
    this.likes = "Likes",
    this.noTasksOnTheHorizon = "No Tasks on The Horizon!",
    this.addATaskOrAskManagementToAddANewTaskToYourBucket =
        "Add a task or ask management to add a new task to your bucket.",
    this.wantToUpgradeWithPremiumFeatures = "Want to upgrade with Premium Features?",
    this.updateStatus = "Update Status",
    this.actions = "Actions",
    this.addItem = "Add Item",
    this.scanItem = "Scan Item",
    this.addItems = "Add Items",
    this.previous = "Previous",
    this.addQuickTask = "Add Quick Task",
    this.manageQuickTask = "Manage Quick Task",
    this.enterTodayTask = "Enter Today Task",
    this.addTask = "Add Task",
    this.newMessages = "New messages",
    this.progress = "Progress",
    this.timeTracking = "Time Tracking",
    this.stopTracker = "Stop Tracker",
    this.taskDetails = "Task Details",
    this.todaysTasks = "Today's Tasks",
    this.createdByMe = "Created by Me",
    this.unlockNow = "Unlock now",
    this.authenticationRequired = "AUTHENTICATION REQUIRED",
    this.becauseTheOnlyPersonSeeingYourDataShouldBeYou =
        "Because the only person seeing your data should be you",
    this.yourPositionInCompany = "Your Position In Company",
    this.country = "Country",
    this.whichSoftwareAreYouUsing = "Which software are you using?",
    this.areYouCurrentlyUsingERPNext = "Are you currently using ERPNext?",
    this.enterOdometerReading = "Enter Odometer Reading",
    this.enterInKM = "Enter In KM",
    this.yourTodaysTask = "Your Today's Task",
    this.noPendingTaskFound = "No pending task found !",
    this.attendanceRequest = "Attendance Request",
    this.newAttendanceRequest = "New Attendance Request",
    this.updateAttendanceRequest = "Update Attendance Request",
    this.typeExplanationHere = "Type Explanation Here",
    this.includeHolidays = "Include Holidays",
    this.selectReason = "Select Reason",
    this.selectShiftType = "Select Shift Type",
    this.stockEntry = "Stock Entry",
    this.stock = "Stock",
    this.totalStockValue = "Total Stock Value",
    this.deleteAttendanceRequest = "Delete Attendance Request",
    this.areYouSureYouWantToDeleteThisAttendanceRequest =
        "Are you sure you want to delete this attendance request ?",
    this.deleteTimesheet = "Delete Timesheet",
    this.areYouSureYouWantToDeleteThisTimesheet =
        "Are you sure you want to delete this timesheet ?",
  });

  factory GetTranslationDataModel.fromMap(Map<String, dynamic> json) {
    return GetTranslationDataModel(
      reason: json["Reason"] ?? "Reason",
      cancelLeave: json["Cancel Leave"] ?? "Cancel Leave",
      leaveType: json["Leave Type"] ?? "Leave Type",
      from: json["From"] ?? "From",
      appliedOn: json["Applied on"] ?? "Applied on",
      to: json["To"] ?? "To",
      leaveDuration: json["Leave Duration"] ?? "Leave Duration",
      leaveDetails: json["Leave Details"] ?? "Leave Details",
      updateLeaveRequest: json["Update Leave Request"] ?? "Update Leave Request",
      years: json['years'] ?? 'years',
      aboutAYear: json['about a year'] ?? 'about a year',
      months: json['months'] ?? 'months',
      aboutAMonth: json['about a month'] ?? 'about a month',
      aDay: json['a day'] ?? 'a day',
      hours: json['hours'] ?? 'hours',
      aboutAnHour: json['about an hour'] ?? 'about an hour',
      minutes: json['minutes'] ?? 'minutes',
      aMinute: json['a minute'] ?? 'a minute',
      aMoment: json['a moment'] ?? 'a moment',
      ago: json['ago'] ?? 'ago',
      fromNow: json['from now'] ?? 'from now',
      pleaseSelectCustomer: json['Please select customer'] ?? 'Please select customer',
      itemsSelected: json['Items selected'] ?? 'Items selected',
      secondHalf: json['Second Half'] ?? 'Second Half',
      firstHalf: json['First Half'] ?? 'First Half',
      select: json['Select'] ?? 'Select',
      selectItems: json['Select Items'] ?? 'Select Items',
      internalErrorOccurredPleaseTryAgainLater:
          json['Internal Error occurred, please try again later !'] ??
          'Internal Error occurred, please try again later !',
      somethingWentWrongPleaseTryAgain:
          json['Something went wrong, please try again !'] ??
          'Something went wrong, please try again !',
      goToSettingsAndEnableTheLocationPermissionTapToOpenSettings:
          json['Go to settings and enable the location permission !!! Tap to open settings.'] ??
          'Go to settings and enable the location permission !!! Tap to open settings.',
      goToSettingsAndGrantAlwaysUseLocationPermissionTapToOpenSettings:
          json['Go to settings and grant "always use" location permission !!! Tap to open settings.'] ??
          'Go to settings and grant "always use" location permission !!! Tap to open settings.',
      weAreSorryForTheInconveniencePleaseLoginAgain:
          json['We are sorry for the inconvenience, please login again !'] ??
          'We are sorry for the inconvenience, please login again !',
      unableToProceedYouAreOutsideTheAuthorisedLocationForThisAction:
          json['Unable to proceed: You are outside the authorised location for this action.'] ??
          'Unable to proceed: You are outside the authorised location for this action.',
      yourSessionHasExpiredPleaseLoginAgain:
          json['Your session has expired, please login again !'] ??
          'Your session has expired, please login again !',
      notifications: json['Notifications'] ?? 'Notifications',
      year: json['Year'] ?? 'Year',
      month: json['Month'] ?? 'Month',
      noDataAvailable: json['No Data Available'] ?? 'No Data Available',
      viewAll: json['View All'] ?? 'View all',
      back: json['Back'] ?? "Back",
      quantity: json['Quantity'] ?? "Qunatity",
      attachments: json['Attachments'] ?? "Attachments",
      selectDeliveryDay: json['Select Delivery day'] ?? "Select Delivery day",
      selectItem: json['Select Item'] ?? "Select Item",
      selectCustomer: json['Select Customer'] ?? "Select Customer",
      createOrder: json['Create Order'] ?? "Create Order",
      delivered: json['Delivered'] ?? "Delivered",
      draft: json['Draft'] ?? "Draft",
      rejected: json['Rejected'] ?? "Rejected",
      approved: json['Approved'] ?? "Approved",
      total: json['Total :'] ?? "Total :",
      discount: json['Discount :'] ?? "Discount :",
      subTotal: json['Sub total :'] ?? "Sub total :",
      totalTax: json['Total Tax :'] ?? "Total Tax :",
      taxDiscount: json['Tax & Discount'] ?? "Tax & Discount",
      totalUnpaid: json['Total Unpaid'] ?? "Total Unpaid",
      annualBilling: json['Annual Billing'] ?? "Annual Billing",
      address: json['Address'] ?? "Address",
      qty: json['Qty'] ?? "Qty",
      itemCode: json['Item code'] ?? "Item code",
      createdBy: json['Created by'] ?? "Created by",
      expectedDelivery: json['Expected Delivery'] ?? "Expected Delivery",
      commentsHere: json['Comments here...'] ?? "Comments here...",
      comments: json['Comments'] ?? "Comments",
      updateOrder: json['Update Order'] ?? "Update Order",
      orderDetails: json['Order Details'] ?? "Order Details",
      amount: json['Amount'] ?? "Amount",
      items: json['Items'] ?? "Items",
      customerName: json['Customer name'] ?? "Customer name",
      searchByOrderIDOrCustomerName:
          json['Search by Order ID or Customer Name'] ?? "Search by Order ID or Customer Name",
      selectVisitType: json['Select Visit Type'] ?? "Select Visit Type",
      updateVisit: json['Update Visit'] ?? "Update Visit",
      employee: json['Employee'] ?? "Employee",
      visitDetails: json['Visit Details'] ?? "Visit Details",
      visits: json['Visits'] ?? "Visits",
      balance: json['Balance'] ?? "Balance",
      credit: json['Credit'] ?? "Credit",
      debit: json['Debit'] ?? "Debit",
      toDate: json['To Date'] ?? "To Date",
      fromDate: json['From Date'] ?? "From Date",
      selectPartyType: json['Select Party Type'] ?? "Select Party Type",
      selectPartyName: json['Select Party Name'] ?? "Select Party Name",
      noTransaction: json['No Transaction'] ?? "No Transaction",
      filterTransaction: json['Filter Transaction'] ?? "Filter Transaction",
      lOP: json['LOP'] ?? "LOP",
      totalWorkDays: json['Total work days'] ?? "Total work days",
      effectiveWorkDays: json['Effective work days'] ?? "Effective work days",
      deductions: json['Deductions'] ?? "Deductions",
      grossPay: json['Gross Pay'] ?? "Gross Pay",
      deduction: json['Deduction'] ?? "Deduction",
      earnings: json['Earnings'] ?? "Earnings",
      basic: json['Basic'] ?? "Basic",
      daySelection: json['Day Selection'] ?? "Day Selection",
      period: json['Period'] ?? "Period",
      halfDay: json['Half day'] ?? "Half day",
      endDay: json['End Day'] ?? "End Day",
      startDay: json['Start Day'] ?? "Start Day",
      addHalfDay: json['Add half day'] ?? "Add half day",
      selectLeaveType: json['Select leave type'] ?? "Select leave type",
      newLeaveRequest: json['New Leave Request'] ?? "New Leave Request",
      leaveRequests: json['Leave requests'] ?? "Leave requests",
      openRequests: json['Open requests'] ?? "Open requests",
      myLeaves: json['My Leaves'] ?? "My Leaves",
      selectYear: json['Select Year'] ?? "Select Year",
      holidayList: json['Holiday List'] ?? "Holiday List",
      uploadExpenseBill: json['Upload Expense Bill'] ?? "Upload Expense Bill",
      typeAmount: json['Type amount'] ?? "Type amount",
      typeReasonHere: json['Type reason here...'] ?? "Type reason here...",
      selectExpenseType: json['Select expense type'] ?? "Select expense type",
      selectDay: json['Select day'] ?? "Select day",
      apply: json['Apply'] ?? "Apply",
      expenseHistory: json['Expense History'] ?? "Expense History",
      myExpenses: json['My Expenses'] ?? "My Expenses",
      fileAlreadyDownloaded: json['File already downloaded.'] ?? "File already downloaded.",
      downloadCompletedClickToOpen:
          json['Download Completed. Click to open'] ?? "Download Completed. Click to open",
      delete: json['Delete'] ?? "Delete",
      download: json['Download'] ?? "Download",
      uploadDocument: json['Upload Document'] ?? "Upload Document",
      documents: json['Documents'] ?? "Documents",
      late: json['Late'] ?? "Late",
      onTime: json['On Time'] ?? "On Time",
      totalDays: json['Total Days'] ?? "Total Days",
      workDuration: json['Work Duration'] ?? "Work Duration",
      checkOut: json['Check Out'] ?? "Check Out",
      checkIn: json['Check In'] ?? "Check In",
      create: json['Create'] ?? "Create",
      cancel: json['Cancel'] ?? "Cancel",
      status: json['Status'] ?? "Status",
      priority: json['Priority'] ?? "Priority",
      selectAssignTo: json['Select Assign To'] ?? "Select Assign To",
      assignTo: json['Assign To'] ?? "Assign To",
      subject: json['Subject'] ?? "Subject",
      selectProject: json['Select Project'] ?? "Select Project",
      optional: json['Optional'] ?? "Optional",
      createNewTask: json['Create New Task'] ?? "Create New Task",
      send: json['Send'] ?? "Send",
      activity: json['Activity'] ?? "Activity",
      markAsInProgress: json['Mark as in progress'] ?? "Mark as in progress",
      markAsCompleted: json['Mark as completed'] ?? "Mark as completed",
      assignedBy: json['Assigned by'] ?? "Assigned by",
      assignedTo: json['Assigned to'] ?? "Assigned to",
      description: json['Description'] ?? "Description",
      dueDate: json['Due Date'] ?? "Due Date",
      completed: json['Completed'] ?? "Completed",
      working: json['Working'] ?? "Working",
      pending: json['Pending'] ?? "Pending",
      done: json['Done'] ?? "Done",
      updateProgress: json['Update Progress'] ?? "Update Progress",
      completedTasks: json['Completed Tasks'] ?? "Completed Tasks",
      myTasks: json['My Tasks'] ?? "My Tasks",
      allTasks: json['All Tasks'] ?? "All Tasks",
      newPassword: json['New Password'] ?? "New Password",
      currentPassword: json['Current Password'] ?? "Current Password",
      changePassword: json['Change Password'] ?? "Change Password",
      logout: json['Logout'] ?? "Logout",
      doYouReallyWantToLogOut:
          json['do you really want to log out ?'] ?? "do you really want to log out ?",
      emergencyContactNumber: json['Emergency Contact Number'] ?? "Emergency Contact Number",
      contactNumber: json['Contact number'] ?? "Contact number",
      personalEmailAddress: json['Personal email address'] ?? "Personal email address",
      officialEmailAddress: json['Official email address'] ?? "Official email address",
      gender: json['Gender'] ?? "Gender",
      dateOfBirth: json['Date of Birth'] ?? "Date of Birth",
      dateOfJoining: json['Date of Joining'] ?? "Date of Joining",
      employeeID: json['Employee ID'] ?? "Employee ID",
      myProfile: json['My Profile'] ?? "My Profile",
      upcomingActivity: json['Upcoming Activity'] ?? "Upcoming Activity",
      createTask: json['Create Task'] ?? "Create Task",
      createVisit: json['Create Visit'] ?? "Create Visit",
      applyLeave: json['Apply Leave'] ?? "Apply Leave",
      applyExpense: json['Apply Expense'] ?? "Apply Expense",
      contacts: json['Contacts'] ?? "Contacts",
      selectContact: json['Select contact'] ?? "Select contact",
      yesterday: json['Yesterday'] ?? "Yesterday",
      today: json['Today'] ?? "Today",
      commentHere: json['Comment here...'] ?? "Comment here...",
      anonymus: json['Anonymus'] ?? "Anonymous",
      messages: json['Messages'] ?? "Messages",
      yourTask: json['Your Task'] ?? "Your Task",
      whatWouldYouLikeToDo: json['What would you like to do?'] ?? "What would you like to do?",
      pendingRequests: json['Pending requests'] ?? "Pending requests",
      attendanceDetails: json['Attendance Details'] ?? "Attendance Details",
      leaveBalance: json['Leave Balance'] ?? "Leave Balance",
      salaryDetails: json['Salary Details'] ?? "Salary Details",
      creditedOn: json['Credited on'] ?? "Credited on",
      workDay: json['Work day'] ?? "Work day",
      viewSalarySlip: json['View Salary Slip'] ?? "View Salary Slip",
      allotted: json['Allotted'] ?? "Allotted",
      nA: json['N/A'] ?? "N/A",
      days: json['Days'] ?? "Days",
      dayOff: json['Day off'] ?? "Day off",
      absent: json['Absent'] ?? "Absent",
      present: json['Present'] ?? "Present",
      expense: json['Expense'] ?? "Expense",
      leave: json['Leave'] ?? "Leave",
      payroll: json['Payroll'] ?? "Payroll",
      document: json['Document'] ?? "Document",
      holiday: json['Holiday'] ?? "Holiday",
      attendance: json['Attendance'] ?? "Attendance",
      transactions: json['Transactions'] ?? "Transactions",
      orders: json['Orders'] ?? "Orders",
      visit: json['Visit'] ?? "Visit",
      goodEvening: json['Good Evening,'] ?? "Good Evening,",
      goodAfternoon: json['Good Afternoon,'] ?? "Good Afternoon,",
      goodMorning: json['Good Morning,'] ?? "Good Morning,",
      subscriptionExpired: json['Subscription expired.'] ?? "Subscription expired.",
      youStartedYourDayAt: json['You started your day at.'] ?? "You started your day at.",
      youReNotCheckInYetToday:
          json['You’re not Check-in yet Today.'] ?? "You’re not Check-in yet Today.",
      retry: json['Retry'] ?? "Retry",
      checkout: json['Check-out'] ?? "Check-out",
      checkin: json['Check-in'] ?? "Check-in",
      skipForNow: json['Skip for Now'] ?? "Skip for Now",
      update: json['Update'] ?? "Update",
      weHaveAddedNewFeaturesAndFixSomeBugsToMakeYourExperienceSeamless:
          json['We have added new features and fix some bugs to make your experience seamless.'] ??
          "We have added new features and fix some bugs to make your experience seamless.",
      appUpdateAvailable: json['App Update Available'] ?? "App Update Available",
      submit: json['Submit'] ?? "Submit",
      mobileNumber: json['Mobile number'] ?? "Mobile number",
      search: json['Search'] ?? "Search",
      email: json['Email'] ?? "Email",
      fullName: json['Full name'] ?? "Full name",
      pleaseFillOutBelowDetails:
          json['Please Fill out below details'] ?? "Please Fill out below details",
      wantToTryOutOnYourServer:
          json['Want to try out on your server ?'] ?? "Want to try out on your server ?",
      continueAsDemoUser: json['Continue as Demo User'] ?? "Continue as Demo User",
      tryOurDemoApp: json['Try Our Demo App'] ?? "Try Our Demo App",
      login: json['Login'] ?? "Login",
      password: json['Password'] ?? "Password",
      username: json['Username'] ?? "Username",
      enterWorkplaceUrl: json['Enter workplace url'] ?? "Enter workplace url",
      enterBelowDetailsToContinue:
          json['Enter below details to continue..'] ?? "Enter below details to continue..",
      letSSignYouIn: json["Let's sign you in"] ?? "Let's sign you in",
      allow: json['Allow'] ?? "Allow",
      donTAllow: json["Don't Allow"] ?? "Don't Allow",
      eSSUsesYourLocationToValidateTheirWorkAttendanceItIsValidatedWhenEmployeesDoCheckInAndCheckOut:
          json['ESS uses your location to validate their work attendance. It is validated when employees do Check-in and Check-out.'] ??
          "$appName uses your location to validate their work attendance. It is validated when employees do Check-in and Check-out.",
      allowESSToUseYourLocation:
          json['Allow "ESS" to use your location?'] ?? 'Allow "$appName" to use your location?',
      selectLanguage: json['Select Language'] ?? "Select Language",
      upgradeToPremium: json['Upgrade to Premium'] ?? "Upgrade to Premium",
      upcomingLeaves: json['Upcoming Leaves'] ?? "Upcoming Leaves",
      pastLeaves: json['Past Leaves'] ?? "Past Leaves",
      cameraPermissionIsRequired:
          json['Camera permission is required !!!'] ?? "Camera permission is required !!!",
      payment: json['Payment'] ?? "Payment",
      pettyExpenses: json['Petty Expenses'] ?? "Petty Expenses",
      timesheet: json['Timesheet'] ?? "Timesheet",
      issue: json['Issue'] ?? "Issue",
      internetConnectionIsRequired:
          json['Internet connection is required !!!'] ?? "Internet connection is required !!!",
      noDataToSync: json['No data to sync'] ?? "No data to sync",
      whoaThereWereNotTimeTravelersYetGiveItAMinuteBeforeTryingAgain:
          json['Whoa there! ⏳ We"re not time travelers yet. Give it a minute before trying again!'] ??
          "Whoa there! ⏳ We're not time travelers yet. Give it a minute before trying again!",
      holdYourHorsesLetsSavorThePresentMomentBeforeLeapingIntoTheFuture:
          json['Hold your horses! 🐎 Let"s savor the present moment before leaping into the future.'] ??
          "Hold your horses! 🐎 Let's savor the present moment before leaping into the future.",
      feelingRestlessHuhTakeABreatherAndComeBackInAJiffy:
          json['Feeling restless, huh? 🤔 Take a breather and come back in a jiffy!'] ??
          "Feeling restless, huh? 🤔 Take a breather and come back in a jiffy!",
      oopsLooksLikeYoureTryingToBreakTheLandSpeedRecordForCheckInsSlowAndSteadyWinsTheRace:
          json['Oops! 🙊 Looks like you"re trying to break the land speed record for check-ins. Slow and steady wins the race!'] ??
          "Oops! 🙊 Looks like you're trying to break the land speed record for check-ins. Slow and steady wins the race!",
      easyThereSpeedRacerWereOnOfficeTimeNotWarpSpeedTime:
          json['Easy there, speed racer! 🏎️ We"re on office time, not warp speed time.'] ??
          "Easy there, speed racer! 🏎️ We're on office time, not warp speed time.",
      attentionTimeEnthusiastsRememberPatienceIsAVirtueGiveItAMomentToCatchUp:
          json['Attention, time enthusiasts! ⏰ Remember, patience is a virtue. Give it a moment to catch up.'] ??
          "Attention, time enthusiasts! ⏰ Remember, patience is a virtue. Give it a moment to catch up.",
      warningRapidCheckInsDetectedPleaseRefrainFromTimeHoppingAntics:
          json['Warning: Rapid check-ins detected! ⚠️ Please refrain from time-hopping antics.'] ??
          "Warning: Rapid check-ins detected! ⚠️ Please refrain from time-hopping antics.",
      looksLikeSomeonesEagerToGetGoingTakeAChillPillAndWaitASec:
          json['Looks like someone"s eager to get going! 🚀 Take a chill pill and wait a sec.'] ??
          "Looks like someone's eager to get going! 🚀 Take a chill pill and wait a sec.",
      braceYourselfRapidCheckInsMayCauseTimeSpaceContinuumDisturbances:
          json['Brace yourself! Rapid check-ins may cause time-space continuum disturbances.'] ??
          "Brace yourself! Rapid check-ins may cause time-space continuum disturbances.",
      holdOnTightOurServersAreCatchingUpWithYourEnthusiasmForCheckIns:
          json['Hold on tight! 🎢 Our servers are catching up with your enthusiasm for check-ins.'] ??
          "Hold on tight! 🎢 Our servers are catching up with your enthusiasm for check-ins.",
      pleaseSelectPartyTypeFirst:
          json['Please select party type first !'] ?? "Please select party type first !",
      clear: json['Clear'] ?? "Clear",
      close: json['Close'] ?? "Close",
      searchByNameOrMobileNumber:
          json['Search by name or mobile number'] ?? "Search by name or mobile number",
      noCustomersFound: json['No Customers Found !'] ?? "No Customers Found !",
      noProjectsFound: json['No Projects Found !'] ?? "No Customers Found !",
      paymentEntry: json['Payment Entry'] ?? "Payment Entry",
      pettyExpense: json['Petty Expense'] ?? "Petty Expense",
      no: json['No'] ?? "No",
      found: json['Found !'] ?? "Found !",
      enterERPCode: json['Enter ERP Code'] ?? "Enter ERP Code",
      required: json['required!'] ?? "required!",
      itSeemsYoureNotYetRegisteredWithUsRegisterUsingBelowButton:
          json['It seems you"re not yet registered with us. Register using below button.'] ??
          "It seems you're not yet registered with us. Register using below button.",
      registerForESS: json['Register for ESS'] ?? "Register for ESS",
      eRPCode: json['ERP Code'] ?? "ERP Code",
      workplaceURL: json['Workplace URL'] ?? "Workplace URL",
      youCanOnlyUpload5PhotosAtATime:
          json['You can only upload 5 photos at a time'] ??
          "You can only upload 5 photos at a time",
      youCanOnlyUpload1VideoAtATime:
          json['You can only upload 1 video at a time'] ?? "You can only upload 1 video at a time",
      pleaseEnterSomeTextOrSelectSomePhotos:
          json['Please enter some text or select some photos'] ??
          "Please enter some text or select some photos",
      postingInProgressUploadingInBackground:
          json['Posting in progress, uploading in background...'] ??
          "Posting in progress, uploading in background...",
      createPost: json['Create Post'] ?? "Create Post",
      createPoll: json['Create Poll'] ?? "Create Poll",
      deletePost: json['Delete Post'] ?? "Delete Post",
      areYouSureYouWantToDeleteThisPost:
          json['Are you sure you want to delete this post?'] ??
          "Are you sure you want to delete this post?",
      likedBy: json['Liked By'] ?? "Liked By",
      images: json['Images'] ?? "Images",
      author: json['Author'] ?? "Author",
      comment: json['Comment'] ?? "Comment",
      noTimesheetEntryFound: json['No Timesheet Entry Found !'] ?? "No Timesheet Entry Found !",
      view: json['View'] ?? "View",
      action: json['Action'] ?? "Action",
      approvalRequests: json['Approval Requests'] ?? "Approval Requests",
      updateIssue: json['Update Issue'] ?? "Update Issue",
      newIssue: json['New Issue'] ?? "New Issue",
      customer: json['Customer'] ?? "Customer",
      project: json['Project'] ?? "Project",
      issueType: json['Issue Type'] ?? "Issue Type",
      save: json['Save'] ?? "Save",
      filterIssue: json['Filter Issue'] ?? "Filter Issue",
      noIssueEntryFound: json['No Issue Entry Found !'] ?? "No Issue Entry Found !",
      dateRange: json['Date Range'] ?? "Date Range",
      date: json['Date'] ?? "Date",
      noOrdersFound: json['No Orders Found !'] ?? "No Orders Found !",
      filterOrders: json['Filter Orders'] ?? "Filter Orders",
      referenceNo: json['Reference no.'] ?? "Reference no.",
      selectNamingSeries: json['Select Naming Series'] ?? "Select Naming Series",
      namingSeries: json['Naming Series'] ?? "Naming Series",
      selectPaymentType: json['Select Payment Type'] ?? "Select Payment Type",
      paymentType: json['Payment Type*'] ?? "Payment Type*",
      selectPaymentMode: json['Select Payment Mode'] ?? "Select Payment Mode",
      paymentMode: json['Payment Mode'] ?? "Payment Mode",
      selectCompany: json['Select Company'] ?? "Select Company",
      company: json['Company*'] ?? "Company*",
      partyType: json['Party Type*'] ?? "Party Type*",
      party: json['Party*'] ?? "Party*",
      selectAccountPaidFrom: json['Select Account Paid From'] ?? "Select Account Paid From",
      accountPaidFrom: json['Account Paid From*'] ?? "Account Paid From*",
      selectAccountPaidTo: json['Select Account Paid To'] ?? "Select Account Paid To",
      accountPaidTo: json['Account Paid To*'] ?? "Account Paid To*",
      referenceDate: json['Reference Date'] ?? "Reference Date",
      noReferencesFound: json['No References Found'] ?? "No References Found",
      reference: json['Reference'] ?? "Reference",
      outstanding: json['Outstanding'] ?? "Outstanding",
      allocate: json['Allocate'] ?? "Allocate",
      totalAllocated: json['Total Allocated'] ?? "Total Allocated",
      totalUnallocated: json['Total Unallocated'] ?? "Total Unallocated",
      noPaymentEntryFound: json['No Payment Entry Found !'] ?? "No Payment Entry Found !",
      filterPaymentEntries: json['Filter Payment Entries'] ?? "Filter Payment Entries",
      paymentEntries: json['Payment Entries'] ?? "Payment Entries",
      type: json['Type'] ?? "Type",
      postingDate: json['Posting Date'] ?? "Posting Date",
      selectStatus: json['Select Status'] ?? "Select Status",
      supplier: json['Supplier'] ?? "Supplier",
      selectExpenseAccount: json['Select Expense Account'] ?? "Select Expense Account",
      expenseAccount: json['Expense Account*'] ?? "Expense Account*",
      selectCostCenter: json['Select Cost Center'] ?? "Select Cost Center",
      selectWarehouse: json['Select Warehouse'] ?? "Select Warehouse",
      warehouse: json['warehouse'] ?? "Warehouse",
      costCenter: json['Cost Center'] ?? "Cost Center",
      selectPayment: json['Select Payment'] ?? "Select Payment",
      modeOfPayment: json['Mode Of Payment*'] ?? "Mode Of Payment*",
      pettyDetails: json['Petty Details'] ?? "Petty Details",
      filterPettyExpense: json['Filter Petty Expense'] ?? "Filter Petty Expense",
      noPettyEntryFound: json['No Petty Entry Found !'] ?? "No Petty Entry Found !",
      selectModeOfPayment: json['Select Mode Of Payment'] ?? "Select Mode Of Payment",
      mode: json['Mode'] ?? "Mode",
      selectTask: json['Select Task'] ?? "Select Task",
      task: json['Task'] ?? "Task",
      note: json['Note'] ?? "Note",
      timesheets: json['Timesheets'] ?? "Timesheets",
      filterTimesheet: json['Filter Timesheet'] ?? "Filter Timesheet",
      totalHours: json['Total Hours:'] ?? "Total Hours:",
      updateTask: json['Update Task'] ?? "Update Task",
      clearFilters: json['Clear Filters'] ?? "Clear Filters",
      applyFilters: json['Apply Filters'] ?? "Apply Filters",
      success: json['Success !'] ?? "Success !",
      info: json['Info !'] ?? "Info !",
      error: json['Error !'] ?? "Error !",
      events: json['Events'] ?? "Events",
      feed: json['Feed'] ?? "Feed",
      filterTasks: json['Filter Tasks'] ?? "Filter Tasks",
      issueDetails: json['Issue Details'] ?? "Issue Details",
      enableLockScreen: json['Enable Lock Screen'] ?? "Enable Lock Screen",
      enableFaceID: json['Enable Face ID'] ?? "Enable Face ID",
      enableFingerprint: json['Enable Fingerprint'] ?? "Enable Fingerprint",
      paymentDetails: json['Payment Details'] ?? "Payment Details",
      newPaymentEntry: json['New Payment Entry'] ?? "New Payment Entry",
      updatePaymentEntry: json['Update Payment Entry'] ?? "Update Payment Entry",
      showless: json['show less'] ?? "show less",
      beTheFirstToComment: json['Be the first to comment 💬'] ?? "Be the first to comment 💬",
      leaveYourThoughtsHere: json['Leave your thoughts here...'] ?? "Be the first to comment 💬",
      beTheFirstToPost: json['Be the first to post 📝'] ?? "Be the first to post 📝",
      deletePaymentEntry: json['Delete Payment Entry ?'] ?? "Delete Payment Entry ?",
      areYouSureYouWantToDeleteThisPaymentEntry:
          json['Are you sure you want to delete this payment entry ?'] ??
          "Are you sure you want to delete this payment entry ?",
      timesheetDetails: json['Timesheet Details'] ?? "Timesheet Details",
      updateTimesheet: json['Update Timesheet'] ?? "Update Timesheet",
      newTimesheet: json['New Timesheet'] ?? "New Timesheet",
      activityType: json['Activity Type'] ?? "Activity Type",
      fromTime: json['From Time*'] ?? "From Time*",
      toTime: json['To Time*'] ?? "To Time*",
      hrs: json['Hrs'] ?? "Hrs",
      invalidHours: json['Invalid Hours'] ?? "Invalid Hours",
      salarySlip: json['Salary Slip'] ?? "Salary Slip",
      thatsAllYouGot: json['That"s all you got.'] ?? "That's all you got.",
      noItemsFound: json['No Items Found 😕!'] ?? "No Items Found 😕!",
      partyBalance: json['Party Balance:'] ?? "Party Balance:",
      next: json['Next'] ?? "Next",
      appearance: json['Appearance'] ?? "Appearance",
      themeMode: json['Theme Mode'] ?? "Theme Mode",
      employeeSelfServiceCustomAppIsNotInstalledInBackend:
          json['Employee Self Service custom app is not installed in backend !!!'] ??
          "Employee Self Service custom app is not installed in backend !!!",
      biometricAuthenticationEnabled:
          json['Biometric Authentication Enabled'] ?? "Biometric Authentication Enabled",
      thankYouWeWillReachOutToYouShortly:
          json['Thank you. We will reach out to you shortly.'] ??
          "Thank you. We will reach out to you shortly.",
      youHaveReachedYourFavoriteLimit6:
          json['You"ve reached your favorite limit (6).'] ??
          "You've reached your favorite limit (6).",
      documentActionListNotFound:
          json['Document action list not found!'] ?? "Document action list not found!",
      notFound: json['Not found !!!'] ?? "Not found !!!",
      enable: json['Enable'] ?? "Enable",
      enableBiometricAuthentication:
          json['Enable Biometric Authentication'] ?? "Enable Biometric Authentication",
      easilyLogInWithYourFingerprintOrFaceForAddedSecurityAndConvenience:
          json['Easily log in with your fingerprint or face for added security and convenience.'] ??
          "Easily log in with your fingerprint or face for added security and convenience.",
      noApprovalRequestsFound:
          json['No Approval Requests Found !'] ?? "No Approval Requests Found !",
      Continue: json['Continue'] ?? "Continue",
      add: json['ADD'] ?? "Add",
      personalDetails: json['Personal Details'] ?? "Personal Details",
      educationDetails: json['Education Details'] ?? "Education Details",
      bankDetails: json['Bank Details'] ?? "Bank Details",
      parentName: json['Parent Name'] ?? "Parent Name",
      parentContact: json['Parent Contact'] ?? "Parent Contact",
      qualification: json['Qualification'] ?? "Qualification",
      schoolUniversity: json['School / University'] ?? "School / University",
      passingYear: json['Passing Year'] ?? "Passing Year",
      bankName: json['Bank Name'] ?? "Bank Name",
      accountNumber: json['Account Number'] ?? "Account Number",
      iban: json['IBAN'] ?? "IBAN",
      lightThemes: json['Light Themes'] ?? "Light Themes",
      darkThemes: json['Dark Themes'] ?? "Dark Themes",
      viewLess: json['View Less'] ?? "View Less",
      viewMore: json['View More'] ?? "View More",
      selectTop6Shortcuts: json['Select Top 6 Shortcuts'] ?? "Select Top 6 Shortcuts",
      like: json['Like'] ?? "Like",
      showOnlyCreatedByMe: json['Show only created by me'] ?? "Show only created by me",
      noQuotationFound: json['No Quotations Found !'] ?? "No Quotations Found !",
      quotation: json['Quotation'] ?? "Quotation",
      quotationDetails: json['Quotation Details'] ?? "Quotation Details",
      validTill: json['Valid Till'] ?? "Valid Till",
      filterQuotations: json['Filter Quotations'] ?? "Filter Quotations",
      quotationTo: json['Quotation To'] ?? "Quotation To",
      expenseClaim: json['Expense Claim'] ?? "Expense Claim",
      noExpensesAdded: json['No expenses added'] ?? "No expenses added",
      selectLead: json['Select Lead'] ?? "Select Lead",
      selectValidTill: json['Select Valid Till'] ?? "Select Valid Till",
      expenses: json['Expenses'] ?? "Expenses",
      terms: json['Terms'] ?? "Terms",
      addItemDetails: json['Add Item Details'] ?? "Add Item Details",
      updateExpense: json['Update Expense'] ?? "Update Expense",
      addExpense: json['Add Expense'] ?? "Add Expense",
      newExpenseItem: json['New Expense Item'] ?? "New Expense Item",
      editExpenseItem: json['Edit Expense Item'] ?? "Edit Expense Item",
      pendingExpense: json['Pending Expense'] ?? "Pending Expense",
      filter: json['Filter'] ?? "Filter",
      expenseClaimed: json['Expense Claimed'] ?? "Expense Claimed",
      deleteItems: json['Delete Items'] ?? "Delete Items",
      addAnotherItem: json['Add Another Item'] ?? "Add Another Item",
      createQuotation: json['Create Quotation'] ?? "Create Quotation",
      documentView: json['Document View'] ?? "Document View",
      leaveHistory: json['Leave History'] ?? "Leave History",
      updateQuotation: json['Update Quotation'] ?? "Update Quotation",
      upgrade: json['Upgrade'] ?? "Upgrade",
      home: json['Home'] ?? "Home",
      tasks: json['Tasks'] ?? "Tasks",
      updates: json['Updates'] ?? "Updates",
      profile: json['Profile'] ?? "Profile",
      posts: json['Posts'] ?? "Posts",
      post: json['Post'] ?? "Post",
      likes: json['Likes'] ?? "Likes",
      noTasksOnTheHorizon: json['No Tasks on The Horizon!'] ?? "No Tasks on The Horizon!",
      addATaskOrAskManagementToAddANewTaskToYourBucket:
          json['Add a task or ask management to add a new task to your bucket.'] ??
          "Add a task or ask management to add a new task to your bucket.",
      wantToUpgradeWithPremiumFeatures:
          json['Want to upgrade with Premium Features?'] ??
          "Want to upgrade with Premium Features?",
      updateStatus: json['Update Status'] ?? "Update Status",
      actions: json['Actions'] ?? "Actions",
      addItem: json['Add Item'] ?? "Add Item",
      scanItem: json['Scan Item'] ?? "Scan Item",
      addItems: json['Add Items'] ?? "Add Items",
      previous: json['Previous'] ?? "Previous",
      addQuickTask: json['Add Quick Task'] ?? "Add Quick Task",
      manageQuickTask: json['Manage Quick Task'] ?? "Manage Quick Task",
      enterTodayTask: json['Enter Today Task'] ?? "Enter Today Task",
      newMessages: json['New messages'] ?? "New messages",
      progress: json['Progress'] ?? "Progress",
      timeTracking: json['Time Tracking'] ?? "Time Tracking",
      stopTracker: json['Stop Tracker'] ?? "Stop Tracker",
      taskDetails: json['Task Details'] ?? "Task Details",
      todaysTasks: json["Today's Tasks"] ?? "Today's Tasks",
      createdByMe: json["Created by Me"] ?? "Created by Me",
      unlockNow: json["Unlock now"] ?? "Unlock now",
      stockEntry: json["Stock Entry"] ?? "Stock Entry",
      stock: json["Stock"] ?? "Stock",
      totalStockValue: json["Total Stock Value"] ?? "Total Stock Value",
      authenticationRequired: json["AUTHENTICATION REQUIRED"] ?? "AUTHENTICATION REQUIRED",
      becauseTheOnlyPersonSeeingYourDataShouldBeYou:
          json["Because the only person seeing your data should be you"] ??
          "Because the only person seeing your data should be you",
      yourPositionInCompany: json["Your Position In Company"] ?? "Your Position In Company",
      country: json["Country"] ?? "Country",
      whichSoftwareAreYouUsing:
          json["Which software are you using?"] ?? "Which software are you using?",
      areYouCurrentlyUsingERPNext:
          json["Are you currently using ERPNext?"] ?? "Are you currently using ERPNext?",
      enterOdometerReading: json["Enter Odometer Reading"] ?? "Enter Odometer Reading",
      enterInKM: json["Enter In KM"] ?? "Enter In KM",
      yourTodaysTask: json["Your Today's Task"] ?? "Your Today's Task",
      noPendingTaskFound: json["No pending task found !"] ?? "No pending task found !",
      attendanceRequest: json["Attendance Request"] ?? "Attendance Request",
      newAttendanceRequest: json["New Attendance Request"] ?? "New Attendance Request",
      updateAttendanceRequest: json["Update Attendance Request"] ?? "Update Attendance Request",
      typeExplanationHere: json["Type Explanation Here"] ?? "Type Explanation Here",
      includeHolidays: json["Include Holidays"] ?? "Include Holidays",
      selectReason: json["Select Reason"] ?? "Select Reason",
      selectShiftType: json["Select Shift Type"] ?? "Select Shift Type",
      deleteAttendanceRequest: json["Delete Attendance Request"] ?? "Delete Attendance Request",
      areYouSureYouWantToDeleteThisAttendanceRequest:
          json["Are you sure you want to delete this attendance request ?"] ??
          "Are you sure you want to delete this attendance request ?",
      deleteTimesheet: json["Delete Timesheet"] ?? "Delete Timesheet",
      areYouSureYouWantToDeleteThisTimesheet:
          json["Are you sure you want to delete this timesheet ?"] ??
          "Are you sure you want to delete this timesheet ?",
    );
  }

  @override
  String toString() {
    return 'GetTranslationDataModel(years: $years, aboutAYear: $aboutAYear, months: $months, aboutAMonth: $aboutAMonth, aDay: $aDay, hours: $hours, aboutAnHour: $aboutAnHour, minutes: $minutes, aMinute: $aMinute, aMoment: $aMoment, ago: $ago, fromNow: $fromNow, pleaseSelectCustomer: $pleaseSelectCustomer, itemsSelected: $itemsSelected, secondHalf: $secondHalf, firstHalf: $firstHalf, select: $select, selectItems: $selectItems, internalErrorOccurredPleaseTryAgainLater: $internalErrorOccurredPleaseTryAgainLater, somethingWentWrongPleaseTryAgain: $somethingWentWrongPleaseTryAgain, goToSettingsAndEnableTheLocationPermissionTapToOpenSettings: $goToSettingsAndEnableTheLocationPermissionTapToOpenSettings, goToSettingsAndGrantAlwaysUseLocationPermissionTapToOpenSettings: $goToSettingsAndGrantAlwaysUseLocationPermissionTapToOpenSettings, weAreSorryForTheInconveniencePleaseLoginAgain: $weAreSorryForTheInconveniencePleaseLoginAgain, unableToProceedYouAreOutsideTheAuthorisedLocationForThisAction: $unableToProceedYouAreOutsideTheAuthorisedLocationForThisAction, yourSessionHasExpiredPleaseLoginAgain: $yourSessionHasExpiredPleaseLoginAgain, notifications: $notifications, year: $year, month: $month, noDataAvailable: $noDataAvailable, viewAll: $viewAll, back: $back, quantity: $quantity, attachments: $attachments, selectDeliveryDay: $selectDeliveryDay, selectItem: $selectItem, selectCustomer: $selectCustomer, createOrder: $createOrder, delivered: $delivered, draft: $draft, rejected: $rejected, approved: $approved, total: $total, discount: $discount, subTotal: $subTotal, totalTax: $totalTax, taxDiscount: $taxDiscount, totalUnpaid: $totalUnpaid, annualBilling: $annualBilling, address: $address, qty: $qty, itemCode: $itemCode, createdBy: $createdBy, expectedDelivery: $expectedDelivery, commentsHere: $commentsHere, comments: $comments, updateOrder: $updateOrder, orderDetails: $orderDetails, amount: $amount, items: $items, customerName: $customerName, searchByOrderIDOrCustomerName: $searchByOrderIDOrCustomerName, selectVisitType: $selectVisitType, updateVisit: $updateVisit, employee: $employee, visitDetails: $visitDetails, visits: $visits, balance: $balance, credit: $credit, debit: $debit, toDate: $toDate, fromDate: $fromDate, selectPartyType: $selectPartyType, selectPartyName: $selectPartyName, noTransaction: $noTransaction, filterTransaction: $filterTransaction, lOP: $lOP, totalWorkDays: $totalWorkDays, effectiveWorkDays: $effectiveWorkDays, deductions: $deductions, grossPay: $grossPay, deduction: $deduction, earnings: $earnings, basic: $basic, daySelection: $daySelection, period: $period, halfDay: $halfDay, endDay: $endDay, startDay: $startDay, addHalfDay: $addHalfDay, selectLeaveType: $selectLeaveType, newLeaveRequest: $newLeaveRequest, leaveRequests: $leaveRequests, openRequests: $openRequests, myLeaves: $myLeaves, selectYear: $selectYear, holidayList: $holidayList, uploadExpenseBill: $uploadExpenseBill, typeAmount: $typeAmount, typeReasonHere: $typeReasonHere, selectExpenseType: $selectExpenseType, selectDay: $selectDay, apply: $apply, expenseHistory: $expenseHistory, myExpenses: $myExpenses, fileAlreadyDownloaded: $fileAlreadyDownloaded, downloadCompletedClickToOpen: $downloadCompletedClickToOpen, delete: $delete, download: $download, uploadDocument: $uploadDocument, documents: $documents, late: $late, onTime: $onTime, totalDays: $totalDays, workDuration: $workDuration, checkOut: $checkOut, checkIn: $checkIn, create: $create, cancel: $cancel, status: $status, priority: $priority, selectAssignTo: $selectAssignTo, assignTo: $assignTo, subject: $subject, selectProject: $selectProject, optional: $optional, createNewTask: $createNewTask, send: $send, activity: $activity, markAsInProgress: $markAsInProgress, markAsCompleted: $markAsCompleted, assignedBy: $assignedBy, assignedTo: $assignedTo, description: $description, dueDate: $dueDate, completed: $completed, working: $working, pending: $pending, done: $done, updateProgress: $updateProgress, completedTasks: $completedTasks, myTasks: $myTasks, allTasks: $allTasks, newPassword: $newPassword, currentPassword: $currentPassword, changePassword: $changePassword, logout: $logout, doYouReallyWantToLogOut: $doYouReallyWantToLogOut, emergencyContactNumber: $emergencyContactNumber, contactNumber: $contactNumber, personalEmailAddress: $personalEmailAddress, officialEmailAddress: $officialEmailAddress, gender: $gender, dateOfBirth: $dateOfBirth, dateOfJoining: $dateOfJoining, employeeID: $employeeID, myProfile: $myProfile, upcomingActivity: $upcomingActivity, createTask: $createTask, createVisit: $createVisit, applyLeave: $applyLeave, applyExpense: $applyExpense, contacts: $contacts, selectContact: $selectContact, yesterday: $yesterday, today: $today, commentHere: $commentHere, anonymus: $anonymus, messages: $messages, yourTask: $yourTask, whatWouldYouLikeToDo: $whatWouldYouLikeToDo, pendingRequests: $pendingRequests, attendanceDetails: $attendanceDetails, leaveBalance: $leaveBalance, salaryDetails: $salaryDetails, creditedOn: $creditedOn, workDay: $workDay, viewSalarySlip: $viewSalarySlip, allotted: $allotted, nA: $nA, days: $days, dayOff: $dayOff, absent: $absent, present: $present, expense: $expense, leave: $leave, payroll: $payroll, document: $document, holiday: $holiday, attendance: $attendance, transactions: $transactions, orders: $orders, visit: $visit, goodEvening: $goodEvening, goodAfternoon: $goodAfternoon, goodMorning: $goodMorning, subscriptionExpired: $subscriptionExpired, youStartedYourDayAt: $youStartedYourDayAt, youReNotCheckInYetToday: $youReNotCheckInYetToday, retry: $retry, checkout: $checkout, checkin: $checkin, skipForNow: $skipForNow, update: $update, weHaveAddedNewFeaturesAndFixSomeBugsToMakeYourExperienceSeamless: $weHaveAddedNewFeaturesAndFixSomeBugsToMakeYourExperienceSeamless, appUpdateAvailable: $appUpdateAvailable, submit: $submit, mobileNumber: $mobileNumber, search: $search, email: $email, fullName: $fullName, pleaseFillOutBelowDetails: $pleaseFillOutBelowDetails, wantToTryOutOnYourServer: $wantToTryOutOnYourServer, continueAsDemoUser: $continueAsDemoUser, tryOurDemoApp: $tryOurDemoApp, login: $login, password: $password, username: $username, enterWorkplaceUrl: $enterWorkplaceUrl, enterBelowDetailsToContinue: $enterBelowDetailsToContinue, letSSignYouIn: $letSSignYouIn, allow: $allow, donTAllow: $donTAllow, allowESSToUseYourLocation: $allowESSToUseYourLocation, selectLanguage: $selectLanguage, upgradeToPremium: $upgradeToPremium, upcomingLeaves: $upcomingLeaves, pastLeaves: $pastLeaves, cameraPermissionIsRequired: $cameraPermissionIsRequired, payment: $payment, pettyExpenses: $pettyExpenses, timesheet: $timesheet, issue: $issue, internetConnectionIsRequired: $internetConnectionIsRequired, noDataToSync: $noDataToSync, whoaThereWereNotTimeTravelersYetGiveItAMinuteBeforeTryingAgain: $whoaThereWereNotTimeTravelersYetGiveItAMinuteBeforeTryingAgain, holdYourHorsesLetsSavorThePresentMomentBeforeLeapingIntoTheFuture: $holdYourHorsesLetsSavorThePresentMomentBeforeLeapingIntoTheFuture, feelingRestlessHuhTakeABreatherAndComeBackInAJiffy: $feelingRestlessHuhTakeABreatherAndComeBackInAJiffy, oopsLooksLikeYoureTryingToBreakTheLandSpeedRecordForCheckInsSlowAndSteadyWinsTheRace: $oopsLooksLikeYoureTryingToBreakTheLandSpeedRecordForCheckInsSlowAndSteadyWinsTheRace, easyThereSpeedRacerWereOnOfficeTimeNotWarpSpeedTime: $easyThereSpeedRacerWereOnOfficeTimeNotWarpSpeedTime, attentionTimeEnthusiastsRememberPatienceIsAVirtueGiveItAMomentToCatchUp: $attentionTimeEnthusiastsRememberPatienceIsAVirtueGiveItAMomentToCatchUp, warningRapidCheckInsDetectedPleaseRefrainFromTimeHoppingAntics: $warningRapidCheckInsDetectedPleaseRefrainFromTimeHoppingAntics, looksLikeSomeonesEagerToGetGoingTakeAChillPillAndWaitASec: $looksLikeSomeonesEagerToGetGoingTakeAChillPillAndWaitASec, braceYourselfRapidCheckInsMayCauseTimeSpaceContinuumDisturbances: $braceYourselfRapidCheckInsMayCauseTimeSpaceContinuumDisturbances, holdOnTightOurServersAreCatchingUpWithYourEnthusiasmForCheckIns: $holdOnTightOurServersAreCatchingUpWithYourEnthusiasmForCheckIns, pleaseSelectPartyTypeFirst: $pleaseSelectPartyTypeFirst, clear: $clear, close: $close, searchByNameOrMobileNumber: $searchByNameOrMobileNumber, noCustomersFound: $noCustomersFound, noProjectsFound: $noProjectsFound, paymentEntry: $paymentEntry, pettyExpense: $pettyExpense, no: $no, found: $found, enterERPCode: $enterERPCode, required: $required, itSeemsYoureNotYetRegisteredWithUsRegisterUsingBelowButton: $itSeemsYoureNotYetRegisteredWithUsRegisterUsingBelowButton, registerForESS: $registerForESS, eRPCode: $eRPCode, workplaceURL: $workplaceURL, youCanOnlyUpload5PhotosAtATime: $youCanOnlyUpload5PhotosAtATime, youCanOnlyUpload1VideoAtATime: $youCanOnlyUpload1VideoAtATime, pleaseEnterSomeTextOrSelectSomePhotos: $pleaseEnterSomeTextOrSelectSomePhotos, postingInProgressUploadingInBackground: $postingInProgressUploadingInBackground, createPost: $createPost, createPoll: $createPoll, deletePost: $deletePost, areYouSureYouWantToDeleteThisPost: $areYouSureYouWantToDeleteThisPost, likedBy: $likedBy, images: $images, author: $author, comment: $comment, noTimesheetEntryFound: $noTimesheetEntryFound, view: $view, action: $action, approvalRequests: $approvalRequests, updateIssue: $updateIssue, newIssue: $newIssue, customer: $customer, project: $project, issueType: $issueType, save: $save, filterIssue: $filterIssue, noIssueEntryFound: $noIssueEntryFound, dateRange: $dateRange, date: $date, noOrdersFound: $noOrdersFound, filterOrders: $filterOrders, paidAmount: $paidAmount, referenceNo: $referenceNo, selectNamingSeries: $selectNamingSeries, namingSeries: $namingSeries, selectPaymentType: $selectPaymentType, paymentType: $paymentType, selectPaymentMode: $selectPaymentMode, paymentMode: $paymentMode, selectCompany: $selectCompany, company: $company, partyType: $partyType, party: $party, selectAccountPaidFrom: $selectAccountPaidFrom, accountPaidFrom: $accountPaidFrom, selectAccountPaidTo: $selectAccountPaidTo, accountPaidTo: $accountPaidTo, referenceDate: $referenceDate, noReferencesFound: $noReferencesFound, reference: $reference, outstanding: $outstanding, allocate: $allocate, totalAllocated: $totalAllocated, totalUnallocated: $totalUnallocated, noPaymentEntryFound: $noPaymentEntryFound, filterPaymentEntries: $filterPaymentEntries, paymentEntries: $paymentEntries, type: $type, postingDate: $postingDate, selectStatus: $selectStatus, supplier: $supplier, selectExpenseAccount: $selectExpenseAccount, expenseAccount: $expenseAccount, selectCostCenter: $selectCostCenter, selectWarehouse: $selectWarehouse, warehouse: $warehouse, costCenter: $costCenter, selectPayment: $selectPayment, modeOfPayment: $modeOfPayment, pettyDetails: $pettyDetails, filterPettyExpense: $filterPettyExpense, noPettyEntryFound: $noPettyEntryFound, selectModeOfPayment: $selectModeOfPayment, mode: $mode, selectTask: $selectTask, task: $task, note: $note, timesheets: $timesheets, filterTimesheet: $filterTimesheet, totalHours: $totalHours, updateTask: $updateTask, clearFilters: $clearFilters, applyFilters: $applyFilters, success: $success, info: $info, error: $error, events: $events, feed: $feed, filterTasks: $filterTasks, issueDetails: $issueDetails, enableLockScreen: $enableLockScreen, enableFaceID: $enableFaceID, enableFingerprint: $enableFingerprint, paymentDetails: $paymentDetails, newPaymentEntry: $newPaymentEntry, updatePaymentEntry: $updatePaymentEntry, showless: $showless, beTheFirstToComment: $beTheFirstToComment, leaveYourThoughtsHere: $leaveYourThoughtsHere, beTheFirstToPost: $beTheFirstToPost, deletePaymentEntry: $deletePaymentEntry, areYouSureYouWantToDeleteThisPaymentEntry: $areYouSureYouWantToDeleteThisPaymentEntry, timesheetDetails: $timesheetDetails, updateTimesheet: $updateTimesheet, newTimesheet: $newTimesheet, activityType: $activityType, fromTime: $fromTime, toTime: $toTime, hrs: $hrs, invalidHours: $invalidHours, salarySlip: $salarySlip, thatsAllYouGot: $thatsAllYouGot, noItemsFound: $noItemsFound, partyBalance: $partyBalance, next: $next, appearance: $appearance, themeMode: $themeMode, employeeSelfServiceCustomAppIsNotInstalledInBackend: $employeeSelfServiceCustomAppIsNotInstalledInBackend, biometricAuthenticationEnabled: $biometricAuthenticationEnabled, thankYouWeWillReachOutToYouShortly: $thankYouWeWillReachOutToYouShortly, youHaveReachedYourFavoriteLimit6: $youHaveReachedYourFavoriteLimit6, documentActionListNotFound: $documentActionListNotFound, notFound: $notFound, enable: $enable, enableBiometricAuthentication: $enableBiometricAuthentication, easilyLogInWithYourFingerprintOrFaceForAddedSecurityAndConvenience: $easilyLogInWithYourFingerprintOrFaceForAddedSecurityAndConvenience, noApprovalRequestsFound: $noApprovalRequestsFound, Continue: $Continue, add: $add, personalDetails: $personalDetails, educationDetails: $educationDetails, bankDetails: $bankDetails, parentName: $parentName, parentContact: $parentContact, qualification: $qualification, schoolUniversity: $schoolUniversity, passingYear: $passingYear, bankName: $bankName, accountNumber: $accountNumber, iban: $iban, lightThemes: $lightThemes, darkThemes: $darkThemes, viewLess: $viewLess, viewMore: $viewMore, selectTop6Shortcuts: $selectTop6Shortcuts, like: $like, showOnlyCreatedByMe: $showOnlyCreatedByMe, noQuotationFound: $noQuotationFound, quotation: $quotation, quotationDetails: $quotationDetails, validTill: $validTill, filterQuotations: $filterQuotations, quotationTo: $quotationTo, expenseClaim: $expenseClaim, noExpensesAdded: $noExpensesAdded, selectLead: $selectLead, selectValidTill: $selectValidTill, expenses: $expenses, terms: $terms, addItemDetails: $addItemDetails, updateExpense: $updateExpense, addExpense: $addExpense, newExpenseItem: $newExpenseItem, editExpenseItem: $editExpenseItem, pendingExpense: $pendingExpense, filter: $filter, expenseClaimed: $expenseClaimed, deleteItems: $deleteItems, addAnotherItem: $addAnotherItem, createQuotation: $createQuotation, documentView: $documentView, leaveHistory: $leaveHistory, updateQuotation: $updateQuotation, upgrade: $upgrade, home: $home, tasks: $tasks, updates: $updates, profile: $profile, posts: $posts, post: $post, likes: $likes, noTasksOnTheHorizon: $noTasksOnTheHorizon, addATaskOrAskManagementToAddANewTaskToYourBucket: $addATaskOrAskManagementToAddANewTaskToYourBucket, wantToUpgradeWithPremiumFeatures: $wantToUpgradeWithPremiumFeatures, updateStatus: $updateStatus, actions: $actions, addItem: $addItem, scanItem: $scanItem, addItems: $addItems, previous: $previous, addQuickTask: $addQuickTask, manageQuickTask: $manageQuickTask, enterTodayTask: $enterTodayTask, addTask: $addTask, newMessages: $newMessages, progress: $progress, timeTracking: $timeTracking, stopTracker: $stopTracker, taskDetails: $taskDetails, todaysTasks: $todaysTasks, createdByMe: $createdByMe, unlockNow: $unlockNow, authenticationRequired: $authenticationRequired, becauseTheOnlyPersonSeeingYourDataShouldBeYou: $becauseTheOnlyPersonSeeingYourDataShouldBeYou, yourPositionInCompany: $yourPositionInCompany, country: $country, whichSoftwareAreYouUsing: $whichSoftwareAreYouUsing, areYouCurrentlyUsingERPNext: $areYouCurrentlyUsingERPNext, enterOdometerReading: $enterOdometerReading, enterInKM: $enterInKM, yourTodaysTask: $yourTodaysTask, noPendingTaskFound: $noPendingTaskFound, attendanceRequest: $attendanceRequest, newAttendanceRequest: $newAttendanceRequest, updateAttendanceRequest: $updateAttendanceRequest, typeExplanationHere: $typeExplanationHere, includeHolidays: $includeHolidays, selectReason: $selectReason, selectShiftType: $selectShiftType, deleteAttendanceRequest: $deleteAttendanceRequest, areYouSureYouWantToDeleteThisAttendanceRequest: $areYouSureYouWantToDeleteThisAttendanceRequest, deleteTimesheet: $deleteTimesheet, areYouSureYouWantToDeleteThisTimesheet: $areYouSureYouWantToDeleteThisTimesheet)';
  }
}
