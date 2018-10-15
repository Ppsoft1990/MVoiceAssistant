.class public Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;
.super Landroid/app/Activity;
.source "HomeLongPressActivity.java"


# static fields
.field private static final DEFAULT_SCENE:I = 0x0

.field private static final KEY_MIAOHU_EXTRA:Ljava/lang/String; = "com.iflytek.cmcc.key_miaohu"

.field private static final MIAOHU_SCENE:I = 0x1

.field private static final NUM_BG_APP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HomeLongPressActivity"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->isMiaoHuScene(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->startHome(Z)V

    return-void
.end method

.method private isMiaoHuScene(I)Z
    .locals 1
    .param p1, "scene"    # I

    .prologue
    const/4 v0, 0x1

    .line 49
    if-ne v0, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startHome(Z)V
    .locals 3
    .param p1, "animation"    # Z

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 99
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_LONG_KEY_PRESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string/jumbo v1, "com.iflytek.cmcc.EXT_ANIMATION_SHOW"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->startActivity(Landroid/content/Intent;)V

    .line 102
    if-eqz p1, :cond_0

    .line 103
    const v1, 0x7f040005

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->overridePendingTransition(II)V

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public isAppOnForeground(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 109
    const-string/jumbo v3, "activity"

    .line 110
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 111
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v6, v6}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v1

    .line 115
    .local v1, "appTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v6, :cond_1

    :cond_0
    move v3, v5

    .line 128
    :goto_0
    return v3

    .line 119
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    .line 120
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    .line 121
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    .line 124
    goto :goto_0

    :cond_2
    move v3, v5

    .line 128
    goto :goto_0
.end method

.method protected longPressHandle(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 53
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 54
    const-string/jumbo v1, "HomeLongPressActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ring status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->finish()V

    .line 88
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string/jumbo v1, "com.iflytek.cmcc.key_miaohu"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 61
    .local v0, "miaoHuFlag":I
    invoke-static {p0}, Lazk;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 65
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity$1;-><init>(Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;I)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0, p0}, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->isMiaoHuScene(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->finish()V

    goto :goto_0

    .line 81
    :cond_2
    invoke-static {p0}, Lazk;->a(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_3

    .line 82
    invoke-direct {p0, v4}, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->startHome(Z)V

    .line 86
    :goto_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->finish()V

    goto :goto_0

    .line 84
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->startHome(Z)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->requestWindowFeature(I)Z

    .line 45
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->longPressHandle(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 140
    const-string/jumbo v0, "HomeLongPressActivity"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 134
    const-string/jumbo v0, "HomeLongPressActivity"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method
