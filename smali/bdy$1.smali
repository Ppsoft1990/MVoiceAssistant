.class final Lbdy$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbdy;->a(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lbdy$1;->a:I

    iput-boolean v0, p0, Lbdy$1;->b:Z

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lbdy$1;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbdy$1;->a:I

    iget v0, p0, Lbdy$1;->a:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lbdy$1;->b:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lbdy$1;->b:Z

    invoke-static {}, Lbdy;->a()V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget v0, p0, Lbdy$1;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbdy$1;->a:I

    iget v0, p0, Lbdy$1;->a:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lbdy$1;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbdy$1;->b:Z

    invoke-static {}, Lbdy;->b()V

    :cond_0
    return-void
.end method
