.class final Lzv$2;
.super Ljava/lang/Object;
.source "CallWindowManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzv;->c(Landroid/content/Context;Lcom/iflytek/viafly/call/CallBroadcastView$a;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzs;


# direct methods
.method constructor <init>(Lzs;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lzv$2;->a:Lzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-static {}, Lzv;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lzv$2$1;

    invoke-direct {v1, p0}, Lzv$2$1;-><init>(Lzv$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method
