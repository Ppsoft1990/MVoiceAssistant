.class public Lpb;
.super Ljava/lang/Object;
.source "FloatWindowPermissionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpb$a;
    }
.end annotation


# static fields
.field private static a:Lpb;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lpb$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lpb;->b:Landroid/content/Context;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lpb;->c:Ljava/util/Set;

    .line 34
    return-void
.end method

.method public static a()Lpb;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lpb;->a:Lpb;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Lpb;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lpb;->a:Lpb;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lpb;

    invoke-direct {v0}, Lpb;-><init>()V

    sput-object v0, Lpb;->a:Lpb;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    sget-object v0, Lpb;->a:Lpb;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    const-string/jumbo v3, "FloatWindowPermissionHelper"

    const-string/jumbo v4, "the activity context cannot be null."

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    return-void

    .line 82
    :cond_0
    :try_start_0
    new-instance v0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    invoke-direct {v0}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;-><init>()V

    .line 83
    .local v0, "builder":Lcom/iflytek/viafly/ui/InteractiveToast$Builder;
    const-string/jumbo v2, "\u8be5\u529f\u80fd\u9700\u8981 \"\u60ac\u6d6e\u7a97\" \u6743\u9650\uff0c"

    .line 84
    .local v2, "toastTip":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->setToastTip(Ljava/lang/String;)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    .line 85
    const-string/jumbo v3, "\u53bb\u5f00\u542f"

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->setBtnContent(Ljava/lang/String;)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    .line 87
    new-instance v3, Lpb$1;

    invoke-direct {v3, p0}, Lpb$1;-><init>(Lpb;)V

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->setOnClickListener(Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    .line 93
    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->show(Landroid/app/Activity;)Lcom/iflytek/viafly/ui/InteractiveToast;

    .line 94
    const-string/jumbo v3, "FloatWindowPermissionHelper"

    const-string/jumbo v4, "show custom toast success."

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v0    # "builder":Lcom/iflytek/viafly/ui/InteractiveToast$Builder;
    .end local v2    # "toastTip":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "FloatWindowPermissionHelper"

    const-string/jumbo v4, "show error"

    invoke-static {v3, v4, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Lpb$a;)V
    .locals 4
    .param p1, "listener"    # Lpb$a;

    .prologue
    .line 52
    invoke-virtual {p0}, Lpb;->d()Z

    move-result v1

    if-nez v1, :cond_3

    .line 53
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_SHOULD_REQUEST_FLOAT_WINDOW_PERMISSION"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    if-eqz p1, :cond_0

    .line 55
    iget-object v1, p0, Lpb;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lpb;->b:Landroid/content/Context;

    const-class v2, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lpb;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p1}, Lpb$a;->onDenied()V

    goto :goto_0

    .line 68
    :cond_3
    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {p1}, Lpb$a;->onGranted()V

    goto :goto_0
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lpb$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lpb;->c:Ljava/util/Set;

    return-object v0
.end method

.method public c()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 104
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    iget-object v2, p0, Lpb;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 109
    iget-object v2, p0, Lpb;->b:Landroid/content/Context;

    const-string/jumbo v3, "1\u3001\u9009\u62e9\u54aa\u5495\u7075\u7280|2\u3001\u70b9\u51fb\u5f00\u542f\"\u5141\u8bb8\u5728\u5176\u4ed6\u5e94\u7528\u7684\u4e0a\u5c42\u663e\u793a\""

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v3, v4, v5}, Lpd;->a(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "FloatWindowPermissionHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public d()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 122
    invoke-static {}, Lhl;->k()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lpb;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
