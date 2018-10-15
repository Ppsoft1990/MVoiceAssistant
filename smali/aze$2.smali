.class final Laze$2;
.super Ljava/lang/Object;
.source "CameraUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laze;->a(Landroid/app/Activity;Landroid/hardware/Camera;Laze$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/hardware/Camera;


# direct methods
.method constructor <init>(Landroid/hardware/Camera;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Laze$2;->a:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Laze$2;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 420
    return-void
.end method
