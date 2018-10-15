.class public Lahy;
.super Ljava/lang/Object;
.source "MicOfflineUsageGuideManager.java"


# static fields
.field private static d:Lahy;


# instance fields
.field private a:Landroid/widget/PopupWindow;

.field private b:Landroid/content/Context;

.field private c:Z

.field private e:Landroid/view/View$OnClickListener;

.field private f:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lahy;->c:Z

    .line 131
    new-instance v0, Lahy$1;

    invoke-direct {v0, p0}, Lahy$1;-><init>(Lahy;)V

    iput-object v0, p0, Lahy;->e:Landroid/view/View$OnClickListener;

    .line 151
    new-instance v0, Lahy$2;

    invoke-direct {v0, p0}, Lahy$2;-><init>(Lahy;)V

    iput-object v0, p0, Lahy;->f:Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Lahy;->b:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public static a(Landroid/content/Context;)Lahy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    sget-object v0, Lahy;->d:Lahy;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lahy;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lahy;->d:Lahy;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lahy;

    invoke-direct {v0, p0}, Lahy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lahy;->d:Lahy;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lahy;->d:Lahy;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lahy;Lqr;)V
    .locals 0
    .param p0, "x0"    # Lahy;
    .param p1, "x1"    # Lqr;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lahy;->c(Lqr;)V

    return-void
.end method

.method private b(Lqr;)Z
    .locals 3
    .param p1, "micController"    # Lqr;

    .prologue
    const/4 v0, 0x1

    .line 61
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "SETTING_IS_NEED_SHOW_OFFLINE_USAGE_GUIDE"

    .line 62
    invoke-virtual {v1, v2, v0}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p1}, Lqr;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    invoke-static {v0}, Lasa;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lahy;->b:Landroid/content/Context;

    .line 66
    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lahy;->b:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/Home;

    .line 67
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-static {}, Lagv;->o()Lahi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    invoke-static {}, Lagv;->o()Lahi;

    move-result-object v1

    invoke-virtual {v1}, Lahi;->h()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lqr;)V
    .locals 8
    .param p1, "micController"    # Lqr;

    .prologue
    .line 77
    invoke-virtual {p1}, Lqr;->e()Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    move-result-object v3

    sget-object v4, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->idle:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    if-eq v3, v4, :cond_0

    .line 78
    const-string/jumbo v3, "MicOfflineUsageGuideHelper"

    const-string/jumbo v4, "user has click button, so dont need show guide"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v3, p0, Lahy;->a:Landroid/widget/PopupWindow;

    if-nez v3, :cond_1

    .line 82
    iget-object v3, p0, Lahy;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300c3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "contentView":Landroid/view/View;
    const v3, 0x7f0b04e7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 84
    .local v1, "coverPartUp":Landroid/view/View;
    iget-object v3, p0, Lahy;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const-string/jumbo v3, "MicOfflineUsageGuideHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showUsageGuideIfNeed() height "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lqr;->a()Lcom/iflytek/framework/browser/mic/MainSpeechView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lahy;->a:Landroid/widget/PopupWindow;

    .line 99
    iget-object v3, p0, Lahy;->a:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lahy;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Lqr;->a()Lcom/iflytek/framework/browser/mic/MainSpeechView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 105
    .end local v0    # "contentView":Landroid/view/View;
    .end local v1    # "coverPartUp":Landroid/view/View;
    :cond_1
    :try_start_0
    iget-object v3, p0, Lahy;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Lqr;->a()Lcom/iflytek/framework/browser/mic/MainSpeechView;

    move-result-object v4

    const/16 v5, 0x50

    const/4 v6, 0x0

    invoke-virtual {p1}, Lqr;->a()Lcom/iflytek/framework/browser/mic/MainSpeechView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->getHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 106
    const/4 v3, 0x1

    iput-boolean v3, p0, Lahy;->c:Z

    .line 107
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "SETTING_IS_NEED_SHOW_OFFLINE_USAGE_GUIDE"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lil;->a(Ljava/lang/String;Z)V

    .line 109
    const-string/jumbo v3, "MicOfflineUsageGuideHelper"

    const-string/jumbo v4, "showUsageGuide()"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 110
    :catch_0
    move-exception v2

    .line 111
    .local v2, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "MicOfflineUsageGuideHelper"

    const-string/jumbo v4, "showUsageGuide() exception"

    invoke-static {v3, v4, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Lqr;)V
    .locals 2
    .param p1, "micController"    # Lqr;

    .prologue
    .line 117
    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-direct {p0, p1}, Lahy;->b(Lqr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p1}, Lqr;->e()Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    move-result-object v0

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->idle:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    if-eq v0, v1, :cond_2

    .line 124
    const-string/jumbo v0, "MicOfflineUsageGuideHelper"

    const-string/jumbo v1, "user has click button, so dont need show guide"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lahy;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lahy;->c:Z

    return v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lahy;->a:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 142
    :try_start_0
    iget-object v1, p0, Lahy;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lahy;->c:Z

    .line 148
    const-string/jumbo v1, "MicOfflineUsageGuideHelper"

    const-string/jumbo v2, "hideUsageGuide()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "MicOfflineUsageGuideHelper"

    const-string/jumbo v2, "hideGuide failed"

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
