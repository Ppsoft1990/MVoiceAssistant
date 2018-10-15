.class public Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "SmsChangeContactInfoToSendActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/widget/TextView;

.field private c:Laow;

.field private d:Lcom/iflytek/base/skin/customView/XEditText;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$a;

.field private g:I

.field private h:Landroid/database/Cursor;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Landroid/content/Context;

.field private l:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private m:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->j:Z

    .line 220
    new-instance v0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$1;-><init>(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->m:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->h:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->m:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;Laow;)Laow;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;
    .param p1, "x1"    # Laow;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->c:Laow;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->f:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$a;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->a(Landroid/content/AsyncQueryHandler;I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/content/AsyncQueryHandler;I)V
    .locals 8
    .param p1, "handler"    # Landroid/content/AsyncQueryHandler;
    .param p2, "token"    # I

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-virtual {p1, p2}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 130
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->k:Landroid/content/Context;

    invoke-static {v0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v0

    invoke-virtual {v0}, Lhe;->c()Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->k:Landroid/content/Context;

    .line 131
    invoke-static {v0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v0

    invoke-virtual {v0}, Lhe;->a()[Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-static {p0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v0

    invoke-virtual {v0}, Lhe;->b()Ljava/lang/String;

    move-result-object v7

    move-object v0, p1

    move v1, p2

    move-object v5, v2

    move-object v6, v2

    .line 130
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 184
    iget-object v11, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 185
    const-wide/16 v6, -0x1

    .line 186
    .local v6, "lastContactId":J
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 188
    :try_start_0
    iget-object v11, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->k:Landroid/content/Context;

    .line 189
    invoke-static {v11}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v11

    invoke-virtual {v11}, Lhe;->a()[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    aget-object v11, v11, v12

    .line 188
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 190
    .local v0, "contactId":J
    cmp-long v11, v6, v0

    if-eqz v11, :cond_0

    .line 193
    iget-object v11, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->k:Landroid/content/Context;

    .line 194
    invoke-static {v11}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v11

    invoke-virtual {v11}, Lhe;->a()[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v11, v11, v12

    .line 193
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "contactName":Ljava/lang/String;
    iget-object v11, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->k:Landroid/content/Context;

    .line 196
    invoke-static {v11}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v11

    invoke-virtual {v11}, Lhe;->a()[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    .line 195
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "contactNumber":Ljava/lang/String;
    iget-object v11, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->k:Landroid/content/Context;

    .line 198
    invoke-static {v11}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v11

    invoke-virtual {v11}, Lhe;->a()[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v11, v11, v12

    .line 197
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 199
    .local v10, "sortKey":Ljava/lang/String;
    iget-object v11, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->k:Landroid/content/Context;

    .line 200
    invoke-static {v11}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v11

    invoke-virtual {v11}, Lhe;->a()[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    aget-object v11, v11, v12

    .line 199
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 201
    .local v8, "photoId":J
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string/jumbo v11, ""

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 204
    :cond_1
    new-instance v5, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v5}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 205
    .local v5, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v5, v2}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v5, v3}, Lcom/iflytek/base/contacts/entities/ContactItem;->c(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v5, v8, v9}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(J)V

    .line 208
    invoke-virtual {v5, v0, v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->a(J)V

    .line 209
    invoke-virtual {v5, v10}, Lcom/iflytek/base/contacts/entities/ContactItem;->e(Ljava/lang/String;)V

    .line 210
    iget-object v11, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    move-wide v6, v0

    goto/16 :goto_0

    .line 212
    .end local v0    # "contactId":J
    .end local v2    # "contactName":Ljava/lang/String;
    .end local v3    # "contactNumber":Ljava/lang/String;
    .end local v5    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    .end local v8    # "photoId":J
    .end local v10    # "sortKey":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 213
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 218
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->h:Landroid/database/Cursor;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->d:Lcom/iflytek/base/skin/customView/XEditText;

    new-instance v1, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$2;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$2;-><init>(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 337
    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Laow;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->c:Laow;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Lcom/iflytek/base/skin/customView/XEditText;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->d:Lcom/iflytek/base/skin/customView/XEditText;

    return-object v0
.end method

.method static synthetic i(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->e:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->finish()V

    .line 153
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 352
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->finish()V

    .line 356
    :goto_0
    return-void

    .line 348
    :pswitch_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->finish()V

    goto :goto_0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b069a
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x8

    .line 73
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->mHead:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->setTitleBarVisible(Z)V

    .line 76
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 78
    const v0, 0x7f03012b

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->setContentView(I)V

    .line 79
    iput-object p0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->k:Landroid/content/Context;

    .line 81
    const v0, 0x7f0b069a

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->l:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 82
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->l:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v0, 0x7f0b069e

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->a:Landroid/widget/ListView;

    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 87
    new-instance v0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$a;

    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$a;-><init>(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->f:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$a;

    .line 89
    const v0, 0x7f0b06c4

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XEditText;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->d:Lcom/iflytek/base/skin/customView/XEditText;

    .line 91
    const v0, 0x7f0b069f

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->b:Landroid/widget/TextView;

    .line 92
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->b()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->i:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->e:Ljava/util/ArrayList;

    .line 95
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 110
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->h:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->h:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 137
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string/jumbo v2, "SmsAddContactsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "---------------->> onItemClick() | position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v1, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v1}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 139
    .local v1, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    iget-boolean v2, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->j:Z

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    check-cast v1, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 144
    .restart local v1    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "ON_CONTACT_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "ON_CONTACT_CHANGE"

    invoke-virtual {v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->b()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->finish()V

    .line 148
    return-void

    .line 142
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    check-cast v1, Lcom/iflytek/base/contacts/entities/ContactItem;

    .restart local v1    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onResume()V

    .line 101
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->a()V

    .line 103
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 104
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->a:Landroid/widget/ListView;

    iget v1, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 105
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 248
    iput p2, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->g:I

    .line 249
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->d:Lcom/iflytek/base/skin/customView/XEditText;

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 243
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 342
    return-void
.end method
