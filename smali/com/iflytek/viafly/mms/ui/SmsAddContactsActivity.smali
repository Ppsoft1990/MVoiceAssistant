.class public Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "SmsAddContactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Laox$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$a;
    }
.end annotation


# static fields
.field public static final EDIT_CONTACTS:Ljava/lang/String; = "EDIT_CONTACTS"

.field private static final MSG_DIALOG_CREATE:I = 0x2

.field private static final MSG_DIALOG_DISMISS:I = 0x3

.field private static final MSG_HAS_CONTACT:I = 0x1

.field private static final MSG_NO_CONTACT:I = 0x0

.field private static final MSG_START_QUERY:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SmsAddContactsActivity"

.field private static final THREAD_LIST_QUERY_TOKEN:I

.field private static mInputView:Lade;


# instance fields
.field protected isSearchMode:Z

.field private mAdapter:Laox;

.field protected mAllContactItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBlank:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private mBuilder:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

.field private mCancelButton:Lcom/iflytek/base/skin/customView/XButton;

.field private mConfirmButton:Lcom/iflytek/base/skin/customView/XButton;

.field private mContactEditPanelView:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

.field private mContext:Landroid/content/Context;

.field private mCounter:Landroid/widget/TextView;

.field private mCursor:Landroid/database/Cursor;

.field protected mFuzzySearchContactItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsAllSelect:Z

.field private mIsLoaded:Z

.field private mItemPosition:I

.field private mListView:Landroid/widget/ListView;

.field private mMailAlertDialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

.field private mNoContactsInfo:Landroid/widget/TextView;

.field private mQueryHandler:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$a;

.field private mScrollContainer:Landroid/widget/ScrollView;

.field private mSearchEditText:Landroid/widget/EditText;

.field private mSelectedContactItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsContent:Ljava/lang/String;

.field private mTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 80
    iput-boolean v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mIsAllSelect:Z

    .line 92
    iput-boolean v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mIsLoaded:Z

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mTime:J

    .line 126
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mSmsContent:Ljava/lang/String;

    .line 143
    iput-boolean v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->isSearchMode:Z

    .line 412
    new-instance v0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$1;-><init>(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mBuilder:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;
    .param p1, "x1"    # Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mBuilder:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    return-object p1
.end method

.method static synthetic access$102(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mMailAlertDialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;
    .param p1, "x1"    # Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mMailAlertDialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$1300(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .prologue
    .line 59
    iget v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mItemPosition:I

    return v0
.end method

.method static synthetic access$1400(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mSearchEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContactEditPanelView:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mIsAllSelect:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mIsAllSelect:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mSelectedContactItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->showCounter()V

    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->getAllContactList(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Laox;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAdapter:Laox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->processIntent()V

    return-void
.end method

.method static synthetic access$600(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mIsLoaded:Z

    return v0
.end method

.method static synthetic access$602(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mIsLoaded:Z

    return p1
.end method

.method static synthetic access$700(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Lcom/iflytek/base/skin/customView/XButton;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mConfirmButton:Lcom/iflytek/base/skin/customView/XButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mNoContactsInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addContact(Lcom/iflytek/base/contacts/entities/ContactItem;)V
    .locals 1
    .param p1, "contactItem"    # Lcom/iflytek/base/contacts/entities/ContactItem;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mSelectedContactItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    iget-boolean v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mIsAllSelect:Z

    if-nez v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContactEditPanelView:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->a(Lcom/iflytek/base/contacts/entities/ContactItem;)V

    .line 706
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->onContactNumChanged()V

    .line 710
    return-void
.end method

.method private deleteContact(Lcom/iflytek/base/contacts/entities/ContactItem;)V
    .locals 1
    .param p1, "contactItem"    # Lcom/iflytek/base/contacts/entities/ContactItem;

    .prologue
    .line 724
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mSelectedContactItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 725
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mSelectedContactItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 726
    iget-boolean v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mIsAllSelect:Z

    if-nez v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContactEditPanelView:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->b(Lcom/iflytek/base/contacts/entities/ContactItem;)V

    .line 729
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->onContactNumChanged()V

    .line 731
    :cond_1
    return-void
.end method

.method private getAllContactList(Landroid/database/Cursor;)V
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 383
    iget-object v8, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAllContactItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 384
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 386
    :try_start_0
    iget-object v8, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContext:Landroid/content/Context;

    .line 387
    invoke-static {v8}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v8

    invoke-virtual {v8}, Lhe;->a()[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    .line 386
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "contactName":Ljava/lang/String;
    iget-object v8, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContext:Landroid/content/Context;

    .line 389
    invoke-static {v8}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v8

    invoke-virtual {v8}, Lhe;->a()[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    .line 388
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, "contactNumber":Ljava/lang/String;
    iget-object v8, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContext:Landroid/content/Context;

    .line 392
    invoke-static {v8}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v8

    invoke-virtual {v8}, Lhe;->a()[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v8, v8, v9

    .line 391
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 393
    .local v6, "photoId":J
    iget-object v8, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContext:Landroid/content/Context;

    .line 394
    invoke-static {v8}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v8

    invoke-virtual {v8}, Lhe;->a()[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    aget-object v8, v8, v9

    .line 393
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 395
    .local v0, "contactId":J
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 398
    :cond_1
    new-instance v5, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v5}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 399
    .local v5, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v5, v2}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v5, v3}, Lcom/iflytek/base/contacts/entities/ContactItem;->c(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v5, v6, v7}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(J)V

    .line 402
    invoke-virtual {v5, v0, v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->a(J)V

    .line 403
    iget-object v8, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAllContactItems:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 404
    .end local v0    # "contactId":J
    .end local v2    # "contactName":Ljava/lang/String;
    .end local v3    # "contactNumber":Ljava/lang/String;
    .end local v5    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    .end local v6    # "photoId":J
    :catch_0
    move-exception v4

    .line 405
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 410
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method private processIntent()V
    .locals 10

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->deleteContact()V

    .line 623
    const/4 v1, 0x0

    .line 625
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmcc.EXTRA_CONTACT"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 626
    .local v4, "initContactItem":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    iget-object v6, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAdapter:Laox;

    invoke-virtual {v6}, Laox;->a()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 627
    iget-object v6, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAdapter:Laox;

    invoke-virtual {v6, v4}, Laox;->a(Ljava/util/List;)V

    .line 628
    if-eqz v4, :cond_3

    .line 629
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 630
    .local v0, "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    add-int/lit8 v1, v1, 0x1

    .line 631
    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAllContactItems:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 632
    .local v2, "fisrtItemPosition":I
    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAllContactItems:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v5

    .line 633
    .local v5, "lastItemPosition":I
    const/4 v7, -0x1

    if-le v2, v7, :cond_0

    .line 634
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-gt v3, v5, :cond_0

    .line 635
    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAdapter:Laox;

    invoke-virtual {v7}, Laox;->a()Ljava/util/HashSet;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 636
    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAdapter:Laox;

    invoke-virtual {v7}, Laox;->a()Ljava/util/HashSet;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 641
    .end local v0    # "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    .end local v2    # "fisrtItemPosition":I
    .end local v3    # "i":I
    .end local v5    # "lastItemPosition":I
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mTime:J

    .line 643
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 644
    iget-object v6, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContactEditPanelView:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-virtual {v6}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->a()V

    .line 655
    :cond_3
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->showCounter()V

    .line 657
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mTime:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mTime:J

    .line 658
    const-string/jumbo v6, "SmsAddContactsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Run time in query : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , Count is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return-void

    .line 646
    :cond_4
    iget-boolean v6, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mIsAllSelect:Z

    if-eqz v6, :cond_5

    .line 647
    iget-object v6, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContactEditPanelView:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-virtual {v6}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->b()V

    .line 649
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 650
    .restart local v0    # "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->addContact(Lcom/iflytek/base/contacts/entities/ContactItem;)V

    goto :goto_1
.end method

.method private registerListener()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mSearchEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$2;-><init>(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 527
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mSearchEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$3;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$3;-><init>(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 539
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mSearchEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$4;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$4;-><init>(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 557
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mSearchEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$5;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$5;-><init>(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 573
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContactEditPanelView:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    new-instance v1, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$6;-><init>(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->setOnSmsWriteTitleViewListener(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$a;)V

    .line 612
    return-void
.end method

.method public static setInputView(Lade;)V
    .locals 0
    .param p0, "inputView"    # Lade;

    .prologue
    .line 753
    sput-object p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mInputView:Lade;

    .line 754
    return-void
.end method

.method private showCounter()V
    .locals 5

    .prologue
    .line 665
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAdapter:Laox;

    invoke-virtual {v2}, Laox;->a()Ljava/util/HashSet;

    move-result-object v0

    .line 666
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    .line 667
    .local v1, "size":I
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mCounter:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5df2\u9009\u62e9"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u4e2a\u8054\u7cfb\u4eba"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    return-void
.end method

.method public static showSoftInput(Landroid/content/Context;Landroid/widget/EditText;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "delayTime"    # I

    .prologue
    .line 683
    const-string/jumbo v2, "input_method"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 684
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 685
    .local v1, "timer":Ljava/util/Timer;
    new-instance v2, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$7;

    invoke-direct {v2, v0, p1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$7;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V

    int-to-long v4, p2

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 692
    return-void
.end method

.method private startAsyncQuery()V
    .locals 3

    .prologue
    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mQueryHandler:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$a;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->startQueryForSort(Landroid/content/AsyncQueryHandler;I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method

.method private startQueryForSort(Landroid/content/AsyncQueryHandler;I)V
    .locals 8
    .param p1, "handler"    # Landroid/content/AsyncQueryHandler;
    .param p2, "token"    # I

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-virtual {p1, p2}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 239
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v0

    invoke-virtual {v0}, Lhe;->c()Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContext:Landroid/content/Context;

    .line 240
    invoke-static {v0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v0

    invoke-virtual {v0}, Lhe;->a()[Ljava/lang/String;

    move-result-object v4

    .line 241
    invoke-static {p0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v0

    invoke-virtual {v0}, Lhe;->b()Ljava/lang/String;

    move-result-object v7

    move-object v0, p1

    move v1, p2

    move-object v5, v2

    move-object v6, v2

    .line 239
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method


# virtual methods
.method protected createFuzzySearchAdapter(Landroid/content/Context;Ljava/util/List;I)Laoy;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;I)",
            "Laoy;"
        }
    .end annotation

    .prologue
    .line 192
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    new-instance v0, Laoy;

    invoke-direct {v0, p1, p2, p3}, Laoy;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-object v0
.end method

.method protected createListAdapter(Landroid/content/Context;Landroid/database/Cursor;)Laox;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 188
    new-instance v0, Laox;

    invoke-direct {v0, p1, p2}, Laox;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    return-object v0
.end method

.method public deleteContact()V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mSelectedContactItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 715
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContactEditPanelView:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c()V

    .line 716
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 340
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->finish()V

    .line 341
    return-void
.end method

.method public getConfirmButton()Lcom/iflytek/base/skin/customView/XButton;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mConfirmButton:Lcom/iflytek/base/skin/customView/XButton;

    return-object v0
.end method

.method public getContactEditPanelView()Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContactEditPanelView:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    return-object v0
.end method

.method public getContactsExcessTips()Ljava/lang/String;
    .locals 2

    .prologue
    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6700\u591a\u53ea\u80fd\u9009\u62e9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->getMaxSelectContactNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u4e2a\u8054\u7cfb\u4eba"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSelectContactNum()I
    .locals 1

    .prologue
    .line 335
    const/16 v0, 0x1e

    return v0
.end method

.method protected getSearchEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mSearchEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getSelectContacts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 738
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mSelectedContactItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 246
    const-string/jumbo v5, "SmsAddContactsActivity"

    const-string/jumbo v6, "---------------->> onClick()"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mCancelButton:Lcom/iflytek/base/skin/customView/XButton;

    if-ne p1, v5, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->finish()V

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mConfirmButton:Lcom/iflytek/base/skin/customView/XButton;

    if-ne p1, v5, :cond_0

    .line 250
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, "newContact":Ljava/lang/String;
    const-string/jumbo v5, "[0-9]+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 252
    new-instance v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 253
    .local v0, "contact":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v0, v4}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, v4}, Lcom/iflytek/base/contacts/entities/ContactItem;->c(Ljava/lang/String;)V

    .line 255
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mSelectedContactItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->onContactNumChanged()V

    .line 258
    .end local v0    # "contact":Lcom/iflytek/base/contacts/entities/ContactItem;
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v2, "contactItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mSelectedContactItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 260
    .local v1, "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    const-string/jumbo v6, "SmsAddContactsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " number:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 263
    .end local v1    # "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    :cond_3
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 264
    .local v3, "names":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 265
    .restart local v1    # "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 267
    .end local v1    # "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    :cond_4
    sget-object v5, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mInputView:Lade;

    if-eqz v5, :cond_5

    .line 268
    sget-object v5, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mInputView:Lade;

    iget-boolean v6, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mIsAllSelect:Z

    invoke-virtual {v5, v6}, Lade;->c(Z)V

    .line 269
    sget-object v5, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mInputView:Lade;

    invoke-virtual {v5, v2, v3}, Lade;->a(Ljava/util/List;Ljava/util/HashSet;)V

    .line 270
    sget-object v5, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mInputView:Lade;

    invoke-virtual {v5}, Lade;->a()V

    .line 272
    :cond_5
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onContactNumChanged()V
    .locals 0

    .prologue
    .line 750
    return-void
.end method

.method public onContentChanged(Laox;)V
    .locals 2
    .param p1, "adapter"    # Laox;

    .prologue
    .line 218
    const-string/jumbo v0, "SmsAddContactsActivity"

    const-string/jumbo v1, "SmsListAdapter | onContentChange"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->startAsyncQuery()V

    .line 221
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 149
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mHead:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 152
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->setTitleBarVisible(Z)V

    .line 153
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 154
    const v1, 0x7f030126

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->setContentView(I)V

    .line 155
    iput-object p0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContext:Landroid/content/Context;

    .line 156
    const v1, 0x7f0b069e

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mListView:Landroid/widget/ListView;

    .line 157
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 159
    const/4 v1, 0x0

    invoke-virtual {p0, p0, v1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->createListAdapter(Landroid/content/Context;Landroid/database/Cursor;)Laox;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAdapter:Laox;

    .line 160
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAdapter:Laox;

    invoke-virtual {v1, p0}, Laox;->a(Laox$a;)V

    .line 161
    new-instance v1, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$a;

    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$a;-><init>(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mQueryHandler:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$a;

    .line 162
    const v1, 0x7f0b069a

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mCancelButton:Lcom/iflytek/base/skin/customView/XButton;

    .line 163
    const v1, 0x7f0b069c

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mConfirmButton:Lcom/iflytek/base/skin/customView/XButton;

    .line 164
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mCancelButton:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v1, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mConfirmButton:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v1, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v1, 0x7f0b069f

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mNoContactsInfo:Landroid/widget/TextView;

    .line 172
    const v1, 0x7f0b069d

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    iput-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContactEditPanelView:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    .line 173
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContactEditPanelView:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mSearchEditText:Landroid/widget/EditText;

    .line 174
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContactEditPanelView:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->getScrollContainer()Landroid/widget/ScrollView;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mScrollContainer:Landroid/widget/ScrollView;

    .line 175
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContactEditPanelView:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->getBlank()Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mBlank:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 177
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "All_CONTACT_TYPE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mIsAllSelect:Z

    .line 178
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "getSize"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 179
    .local v0, "size":I
    const v1, 0x7f0b069b

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mCounter:Landroid/widget/TextView;

    .line 180
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mCounter:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5df2\u9009\u62e9"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u4e2a\u8054\u7cfb\u4eba"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->registerListener()V

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAllContactItems:Ljava/util/List;

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mSelectedContactItems:Ljava/util/ArrayList;

    .line 184
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->onContactNumChanged()V

    .line 185
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 208
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 287
    const-string/jumbo v4, "SmsAddContactsActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "---------------->> onItemClick() | position = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-boolean v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->isSearchMode:Z

    if-eqz v4, :cond_4

    .line 290
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mFuzzySearchContactItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 291
    .local v0, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAdapter:Laox;

    invoke-virtual {v4}, Laox;->b()Ljava/util/HashSet;

    move-result-object v2

    .line 292
    .local v2, "selectedItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAllContactItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 293
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAllContactItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 294
    .local v1, "itemPosition":I
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAdapter:Laox;

    invoke-virtual {v4}, Laox;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 295
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mSelectedContactItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v6, 0x1e

    if-lt v4, v6, :cond_0

    iget-boolean v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mIsAllSelect:Z

    if-nez v4, :cond_0

    .line 296
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "\u6700\u591a\u53ea\u80fd\u9009\u62e930\u4e2a\u8054\u7cfb\u4eba"

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 328
    .end local v0    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    .end local v1    # "itemPosition":I
    .end local v2    # "selectedItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :goto_0
    return-void

    .line 299
    .restart local v0    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    .restart local v1    # "itemPosition":I
    .restart local v2    # "selectedItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :cond_0
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAdapter:Laox;

    invoke-virtual {v4}, Laox;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->addContact(Lcom/iflytek/base/contacts/entities/ContactItem;)V

    .line 308
    .end local v1    # "itemPosition":I
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAdapter:Laox;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 309
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mSearchEditText:Landroid/widget/EditText;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 327
    .end local v0    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    .end local v2    # "selectedItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->showCounter()V

    goto :goto_0

    .line 303
    .restart local v0    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    .restart local v1    # "itemPosition":I
    .restart local v2    # "selectedItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :cond_3
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAdapter:Laox;

    invoke-virtual {v4}, Laox;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 304
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 305
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->deleteContact(Lcom/iflytek/base/contacts/entities/ContactItem;)V

    goto :goto_1

    .line 311
    .end local v0    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    .end local v1    # "itemPosition":I
    .end local v2    # "selectedItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :cond_4
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAdapter:Laox;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAdapter:Laox;

    invoke-virtual {v4}, Laox;->a()Ljava/util/HashSet;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 312
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAdapter:Laox;

    invoke-virtual {v4}, Laox;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 313
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAdapter:Laox;

    invoke-virtual {v4}, Laox;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 314
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAllContactItems:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {p0, v4}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->deleteContact(Lcom/iflytek/base/contacts/entities/ContactItem;)V

    :goto_3
    move-object v3, p2

    .line 323
    check-cast v3, Lcom/iflytek/viafly/mms/ui/ContactSortView;

    .line 324
    .local v3, "sortView":Lcom/iflytek/viafly/mms/ui/ContactSortView;
    invoke-virtual {v3}, Lcom/iflytek/viafly/mms/ui/ContactSortView;->getCheckBox()Lcom/iflytek/base/skin/customView/XCheckBox;

    move-result-object v6

    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAdapter:Laox;

    invoke-virtual {v4}, Laox;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_4
    invoke-virtual {v6, v4}, Lcom/iflytek/base/skin/customView/XCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 316
    .end local v3    # "sortView":Lcom/iflytek/viafly/mms/ui/ContactSortView;
    :cond_5
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mSelectedContactItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->getMaxSelectContactNum()I

    move-result v6

    if-lt v4, v6, :cond_6

    iget-boolean v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mIsAllSelect:Z

    if-nez v4, :cond_6

    .line 317
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->getContactsExcessTips()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 320
    :cond_6
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAdapter:Laox;

    invoke-virtual {v4}, Laox;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mAllContactItems:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {p0, v4}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->addContact(Lcom/iflytek/base/contacts/entities/ContactItem;)V

    goto :goto_3

    .line 324
    .restart local v3    # "sortView":Lcom/iflytek/viafly/mms/ui/ContactSortView;
    :cond_7
    const/4 v4, 0x0

    goto :goto_4
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 200
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onResume()V

    .line 201
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 202
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 203
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 483
    iput p2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mItemPosition:I

    .line 484
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 477
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 478
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 673
    return-void
.end method
