.class Layv$1;
.super Ljava/lang/Object;
.source "TranslatePicPresenter.java"

# interfaces
.implements Layl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Layv;


# direct methods
.method constructor <init>(Layv;)V
    .locals 0
    .param p1, "this$0"    # Layv;

    .prologue
    .line 99
    iput-object p1, p0, Layv$1;->a:Layv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # I
    .param p2, "result"    # Ljava/lang/String;
    .param p3, "logId"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Layv$1$1;

    invoke-direct {v1, p0, p2}, Layv$1$1;-><init>(Layv$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method
