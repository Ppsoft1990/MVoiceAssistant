.class public Lavs;
.super Ljava/lang/Object;
.source "ScheduleDelayGuideManager.java"


# static fields
.field private static a:Lavs;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/permission/data/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lavs;->c:Z

    .line 41
    return-void
.end method

.method public static a()Lavs;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lavs;->a:Lavs;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lavs;

    invoke-direct {v0}, Lavs;-><init>()V

    sput-object v0, Lavs;->a:Lavs;

    .line 47
    :cond_0
    sget-object v0, Lavs;->a:Lavs;

    return-object v0
.end method

.method static synthetic a(Lavs;)V
    .locals 0
    .param p0, "x0"    # Lavs;

    .prologue
    .line 31
    invoke-direct {p0}, Lavs;->c()V

    return-void
.end method

.method static synthetic a(Lavs;Z)Z
    .locals 0
    .param p0, "x0"    # Lavs;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lavs;->c:Z

    return p1
.end method

.method static synthetic b(Lavs;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lavs;

    .prologue
    .line 31
    iget-object v0, p0, Lavs;->b:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 155
    invoke-static {}, Laun;->a()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v0

    .line 156
    .local v0, "manualAddSchedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v2

    const-string/jumbo v3, "schedule"

    invoke-interface {v2, v3}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->getBusinessHandler(Ljava/lang/String;)Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    move-result-object v1

    .line 158
    .local v1, "scheduleBusinessHandler":Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    if-eqz v1, :cond_0

    .line 159
    sget-object v2, Lcom/iflytek/framework/business/entities/UIEvent;->activity_resume:Lcom/iflytek/framework/business/entities/UIEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/iflytek/framework/business/interfaces/IBusinessHandler;->onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z

    .line 162
    .end local v1    # "scheduleBusinessHandler":Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isFromScheduleChannel"    # Z

    .prologue
    const/4 v3, 0x1

    .line 84
    iget-object v1, p0, Lavs;->b:Ljava/util/List;

    if-nez v1, :cond_0

    .line 85
    invoke-static {}, Laqv;->a()Laqv;

    move-result-object v1

    const-string/jumbo v2, "bootcomplete|bootbackground"

    invoke-virtual {v1, p1, v2}, Laqv;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lavs;->b:Ljava/util/List;

    .line 88
    :cond_0
    iput-boolean v3, p0, Lavs;->c:Z

    .line 89
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;
    const-string/jumbo v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 91
    const v1, 0x7f0c013c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 92
    const-string/jumbo v1, "\u4e0d\u518d\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setCheckboxTips(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 93
    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_IS_ENABLE_SCHEDULE_DELAY_DIALOG"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setCheckBoxSetting(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 95
    iget-object v1, p0, Lavs;->b:Ljava/util/List;

    invoke-static {v1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setIsSingleButton(Z)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 97
    const-string/jumbo v1, "\u77e5\u9053\u4e86"

    new-instance v2, Lavs$1;

    invoke-direct {v2, p0, p2, v0}, Lavs$1;-><init>(Lavs;ZLcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 151
    :goto_0
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog;

    .line 152
    return-void

    .line 110
    :cond_1
    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lavs$2;

    invoke-direct {v2, p0, p2, v0}, Lavs$2;-><init>(Lavs;ZLcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 123
    const-string/jumbo v1, "\u8bbe\u7f6e\u4e00\u4e0b"

    new-instance v2, Lavs$3;

    invoke-direct {v2, p0, p1, v0}, Lavs$3;-><init>(Lavs;Landroid/content/Context;Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    .line 137
    new-instance v1, Lavs$4;

    invoke-direct {v1, p0, p2, v0}, Lavs$4;-><init>(Lavs;ZLcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lavs;->c:Z

    return v0
.end method
