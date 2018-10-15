.class public Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "CallPrivacyAddContactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;,
        Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;,
        Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ThreadListQueryHandler;
    }
.end annotation


# static fields
.field private static final MSG_DIALOG_CREATE:I = 0x0

.field private static final MSG_DIALOG_DISMISS:I = 0x1

.field private static final MSG_START_QUERY:I = 0x2

.field public static final RESULT_DATA_NAME:Ljava/lang/String; = "selectedName"

.field public static final RESULT_SELECTED_SIZE:Ljava/lang/String; = "selectedSize"

.field private static final THREAD_LIST_QUERY_TOKEN:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAdapter:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;

.field private mAllContactItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBuilder:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

.field private mCancelButton:Lcom/iflytek/base/skin/customView/XButton;

.field private mConfirmButton:Lcom/iflytek/base/skin/customView/XButton;

.field private mContext:Landroid/content/Context;

.field private mCounter:Lcom/iflytek/base/skin/customView/XTextView;

.field private mCounterFormatString:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mHandler:Landroid/os/Handler;

.field private mIsLoaded:Z

.field private mListView:Landroid/widget/ListView;

.field private mMailAlertDialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

.field private mQueryHandler:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ThreadListQueryHandler;

.field private mSearchEditText:Lcom/iflytek/base/skin/customView/XEditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->TAG:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mIsLoaded:Z

    .line 89
    new-instance v0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$1;-><init>(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mIsLoaded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mIsLoaded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mMailAlertDialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Lcom/iflytek/base/skin/customView/XEditText;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mSearchEditText:Lcom/iflytek/base/skin/customView/XEditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->startAsyncQuery(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$502(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$600(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->getAllContactList(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$700(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mAllContactItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mAdapter:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getAllContactList(Landroid/database/Cursor;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 376
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mAllContactItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 377
    const-string/jumbo v3, ""

    .line 378
    .local v3, "nameString":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 380
    :try_start_0
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mContext:Landroid/content/Context;

    .line 381
    invoke-static {v6}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v6

    .line 382
    invoke-virtual {v6}, Lhe;->a()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    .line 381
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 380
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "contactName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 384
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mContext:Landroid/content/Context;

    .line 386
    invoke-static {v6}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v6

    .line 387
    invoke-virtual {v6}, Lhe;->a()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    .line 385
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 384
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 388
    .local v5, "sortKey":Ljava/lang/String;
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mContext:Landroid/content/Context;

    .line 390
    invoke-static {v6}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v6

    .line 391
    invoke-virtual {v6}, Lhe;->a()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 389
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 388
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, "numString":Ljava/lang/String;
    new-instance v2, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v2}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 394
    .local v2, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v2, v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v2, v4}, Lcom/iflytek/base/contacts/entities/ContactItem;->c(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v2, v5}, Lcom/iflytek/base/contacts/entities/ContactItem;->e(Ljava/lang/String;)V

    .line 398
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mAllContactItems:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    move-object v3, v0

    goto :goto_0

    .line 401
    .end local v0    # "contactName":Ljava/lang/String;
    .end local v2    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    .end local v4    # "numString":Ljava/lang/String;
    .end local v5    # "sortKey":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 407
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private registerListener()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mSearchEditText:Lcom/iflytek/base/skin/customView/XEditText;

    new-instance v1, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$2;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$2;-><init>(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 234
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mSearchEditText:Lcom/iflytek/base/skin/customView/XEditText;

    new-instance v1, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$3;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$3;-><init>(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 244
    return-void
.end method

.method private showCounter()V
    .locals 6

    .prologue
    .line 341
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mAdapter:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;

    invoke-virtual {v1}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->getSelectedCount()I

    move-result v0

    .line 342
    .local v0, "size":I
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mCounter:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mCounterFormatString:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    return-void
.end method

.method private startAsyncQuery(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mQueryHandler:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ThreadListQueryHandler;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p1}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->startQueryForSort(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method

.method private startQueryForSort(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V
    .locals 9
    .param p1, "handler"    # Landroid/content/AsyncQueryHandler;
    .param p2, "token"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 361
    invoke-virtual {p1, p2}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 362
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v8

    .line 363
    .local v8, "contactManager":Lhe;
    const/4 v2, 0x0

    invoke-virtual {v8}, Lhe;->c()Landroid/net/Uri;

    move-result-object v3

    .line 364
    invoke-virtual {v8}, Lhe;->a()[Ljava/lang/String;

    move-result-object v4

    .line 365
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->getContactSetWhereStr(Z)Ljava/lang/String;

    move-result-object v5

    .line 366
    invoke-virtual {p0, p3, v1}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->getContactSetWhereParams(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v6

    .line 367
    invoke-static {p0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v0

    invoke-virtual {v0}, Lhe;->b()Ljava/lang/String;

    move-result-object v7

    move-object v0, p1

    move v1, p2

    .line 363
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method


# virtual methods
.method protected cancelBtnClick()V
    .locals 2

    .prologue
    .line 329
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->setResult(ILandroid/content/Intent;)V

    .line 330
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->finish()V

    .line 331
    return-void
.end method

.method protected confirmBtnClick()V
    .locals 3

    .prologue
    .line 314
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 315
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "selectedName"

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mAdapter:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;

    invoke-virtual {v2}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->getSelectedContactItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 316
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->setResult(ILandroid/content/Intent;)V

    .line 317
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mAdapter:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;

    invoke-virtual {v1}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->isUploadedLog()Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->updateUploadedLog()V

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->finish()V

    .line 323
    return-void
.end method

.method protected createListAdapter(Landroid/content/Context;)Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 334
    new-instance v0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mAllContactItems:Ljava/util/List;

    invoke-direct {v0, p0, p1, v1}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;-><init>(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method protected getContactSetWhereParams(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fuzzyFlag"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 464
    if-eqz p2, :cond_0

    .line 465
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 468
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v3

    goto :goto_0
.end method

.method protected getContactSetWhereStr(Z)Ljava/lang/String;
    .locals 1
    .param p1, "fuzzyFlag"    # Z

    .prologue
    .line 449
    if-eqz p1, :cond_0

    .line 450
    const-string/jumbo v0, "display_name like ?"

    .line 453
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "display_name = ?"

    goto :goto_0
.end method

.method protected initReceivedData(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 179
    const-string/jumbo v2, "selectedName"

    .line 180
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 181
    .local v1, "tmpDataArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    if-eqz v1, :cond_1

    .line 182
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mAdapter:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;

    if-nez v2, :cond_0

    .line 183
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->createListAdapter(Landroid/content/Context;)Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mAdapter:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mAdapter:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;

    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->setSelectedContactItems(Ljava/util/ArrayList;)V

    .line 188
    .end local v1    # "tmpDataArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :cond_1
    return-void
.end method

.method protected isUploadedLog()Z
    .locals 3

    .prologue
    .line 297
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NOTIFY_CALL_PATTERN_NAME_USED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mCancelButton:Lcom/iflytek/base/skin/customView/XButton;

    if-ne p1, v0, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->cancelBtnClick()V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mConfirmButton:Lcom/iflytek/base/skin/customView/XButton;

    if-ne p1, v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->confirmBtnClick()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x8

    .line 120
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mHead:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->setTitleBarVisible(Z)V

    .line 124
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 125
    const v0, 0x7f0300b0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->setContentView(I)V

    .line 127
    invoke-virtual {p0, p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->createListAdapter(Landroid/content/Context;)Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mAdapter:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;

    .line 130
    invoke-virtual {p0, p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->initReceivedData(Landroid/content/Context;)V

    .line 132
    iput-object p0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mContext:Landroid/content/Context;

    .line 134
    const v0, 0x7f0b049c

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mListView:Landroid/widget/ListView;

    .line 135
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 137
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mAdapter:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    const v0, 0x7f0b0498

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mCancelButton:Lcom/iflytek/base/skin/customView/XButton;

    .line 141
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mCancelButton:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v0, 0x7f0b049a

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mConfirmButton:Lcom/iflytek/base/skin/customView/XButton;

    .line 144
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mConfirmButton:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v0, 0x7f0b0499

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mCounter:Lcom/iflytek/base/skin/customView/XTextView;

    .line 148
    const v0, 0x7f0c002d

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mCounterFormatString:Ljava/lang/String;

    .line 151
    const v0, 0x7f0b049b

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XEditText;

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mSearchEditText:Lcom/iflytek/base/skin/customView/XEditText;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mAllContactItems:Ljava/util/List;

    .line 156
    new-instance v0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ThreadListQueryHandler;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ThreadListQueryHandler;-><init>(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mQueryHandler:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ThreadListQueryHandler;

    .line 158
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->showCounter()V

    .line 159
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->registerListener()V

    .line 160
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 265
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mAdapter:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 266
    check-cast v0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;

    .line 267
    .local v0, "sortView":Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;
    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;->tooggleCheck()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mAdapter:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;

    invoke-virtual {v1, p3}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->addItem(I)V

    .line 273
    .end local v0    # "sortView":Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->showCounter()V

    .line 274
    return-void

    .line 270
    .restart local v0    # "sortView":Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameSortView;
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mAdapter:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;

    invoke-virtual {v1, p3}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->removeItem(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 164
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onResume()V

    .line 165
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mAdapter:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mAdapter:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 168
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 171
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 250
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I

    .prologue
    .line 256
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method protected showLoadingDialog()V
    .locals 5

    .prologue
    .line 194
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lhl;->d(Landroid/content/Context;)I

    move-result v2

    .line 195
    .local v2, "screenWidth":I
    new-instance v3, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mBuilder:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    .line 196
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mBuilder:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    const v4, 0x7f0c002b

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    .line 197
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mBuilder:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->create()Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mMailAlertDialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    .line 198
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mMailAlertDialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->setCancelable(Z)V

    .line 199
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mMailAlertDialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 200
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070192

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 202
    .local v1, "padding":I
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mMailAlertDialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    sub-int v4, v2, v1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 204
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mMailAlertDialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 205
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 206
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v3, 0x3f333333    # 0.7f

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 207
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mMailAlertDialog:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 208
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->mBuilder:Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/dialog/MailAlertDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MailAlertDialog;

    .line 209
    return-void
.end method

.method protected updateUploadedLog()V
    .locals 3

    .prologue
    .line 307
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NOTIFY_CALL_PATTERN_NAME_USED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 309
    return-void
.end method
