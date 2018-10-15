.class Lcom/iflytek/viafly/call/CallBusinessManager$7;
.super Ljava/lang/Object;
.source "CallBusinessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/call/CallBusinessManager;->c(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/iflytek/viafly/call/CallBusinessManager;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/call/CallBusinessManager;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 2114
    iput-object p1, p0, Lcom/iflytek/viafly/call/CallBusinessManager$7;->b:Lcom/iflytek/viafly/call/CallBusinessManager;

    iput-wide p2, p0, Lcom/iflytek/viafly/call/CallBusinessManager$7;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager$7;->b:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v0}, Lcom/iflytek/viafly/call/CallBusinessManager;->m(Lcom/iflytek/viafly/call/CallBusinessManager;)Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager$7;->a:J

    invoke-static {v0, v2, v3}, Lzv;->a(Landroid/content/Context;J)V

    .line 2118
    return-void
.end method
