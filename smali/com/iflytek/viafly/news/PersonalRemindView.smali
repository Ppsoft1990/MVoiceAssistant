.class public Lcom/iflytek/viafly/news/PersonalRemindView;
.super Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;
.source "PersonalRemindView.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/iflytek/viafly/news/PersonalRemindView;->a:Landroid/content/Context;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 27
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0300ea

    invoke-virtual {v0, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->getItem(Ljava/lang/Integer;)Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    move-result-object v1

    .line 30
    .local v1, "personalizedRingtoneEntity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getWording()Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "words":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 33
    const v3, 0x7f0b0586

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/news/PersonalRemindView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v3, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .end local v2    # "words":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method
