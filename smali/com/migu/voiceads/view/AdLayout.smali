.class public abstract Lcom/migu/voiceads/view/AdLayout;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Z

.field protected b:Landroid/app/Activity;

.field public c:Lcom/migu/voiceads/bussiness/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/migu/voiceads/view/AdLayout;->a:Z

    new-instance v0, Lcom/migu/voiceads/view/a;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/view/a;-><init>(Lcom/migu/voiceads/view/AdLayout;)V

    iput-object v0, p0, Lcom/migu/voiceads/view/AdLayout;->c:Lcom/migu/voiceads/bussiness/d;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/migu/voiceads/view/AdLayout;->b:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$0(Lcom/migu/voiceads/view/AdLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/migu/voiceads/view/AdLayout;->a:Z

    return v0
.end method

.method static synthetic access$1(Lcom/migu/voiceads/view/AdLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/migu/voiceads/view/AdLayout;->a:Z

    return-void
.end method

.method public static checkManifest(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/migu/voiceads/utils/l;->a:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/migu/voiceads/utils/l;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-class v1, Lcom/migu/voiceads/utils/download/DownloadService;

    invoke-static {p0, v1}, Lcom/migu/voiceads/utils/l;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "destroy() --this.getParent().removeView(this)"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/migu/voiceads/view/AdLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/migu/voiceads/view/AdLayout;->removeAllViews()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/view/AdLayout;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
