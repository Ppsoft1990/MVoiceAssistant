.class final Lzv$1;
.super Ljava/lang/Object;
.source "CallWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzv;->a(Landroid/content/Context;Lcom/iflytek/viafly/call/CallBroadcastView$a;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/iflytek/viafly/call/CallBroadcastView$a;

.field final synthetic c:Z

.field final synthetic d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/call/CallBroadcastView$a;ZZ)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lzv$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lzv$1;->b:Lcom/iflytek/viafly/call/CallBroadcastView$a;

    iput-boolean p3, p0, Lzv$1;->c:Z

    iput-boolean p4, p0, Lzv$1;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lzv$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lzv$1;->b:Lcom/iflytek/viafly/call/CallBroadcastView$a;

    iget-boolean v2, p0, Lzv$1;->c:Z

    iget-boolean v3, p0, Lzv$1;->d:Z

    invoke-static {v0, v1, v2, v3}, Lzv;->b(Landroid/content/Context;Lcom/iflytek/viafly/call/CallBroadcastView$a;ZZ)V

    .line 51
    return-void
.end method
