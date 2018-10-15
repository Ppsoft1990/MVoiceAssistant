.class public abstract Lahd$a;
.super Ljava/lang/Object;
.source "HomeLBSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private homeContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {}, Lagv;->f()Lahd;

    move-result-object v0

    invoke-virtual {v0}, Lahd;->p()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lahd$a;->homeContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lahd$a;->homeContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lahd$a;->homeContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lpd;->b(Landroid/content/Context;Ljava/lang/String;)Lpe;

    .line 143
    :cond_0
    return-void
.end method

.method public abstract onGranted()V
.end method

.method public onUnrationale()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lahd$a;->homeContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lahd$a;->homeContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lpd;->b(Landroid/content/Context;Ljava/lang/String;)Lpe;

    .line 149
    :cond_0
    return-void
.end method
