.class final Laop$a;
.super Landroid/os/Handler;
.source "SmsBusinessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Laop;


# direct methods
.method public constructor <init>(Laop;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 267
    iput-object p1, p0, Laop$a;->a:Laop;

    .line 268
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 269
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 274
    iget-object v1, p0, Laop$a;->a:Laop;

    invoke-static {v1}, Laop;->a(Laop;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "SmsBusinessManager"

    const-string/jumbo v3, "ReadHandler run read tts thread"

    invoke-static {v1, v2, v3}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string/jumbo v1, "SmsBusinessManager"

    const-string/jumbo v2, "run read tts thread"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/base/mms/entities/SmsItem;

    .line 277
    .local v0, "item":Lcom/iflytek/base/mms/entities/SmsItem;
    iget-object v1, p0, Laop$a;->a:Laop;

    invoke-static {v1, v0}, Laop;->a(Laop;Lcom/iflytek/base/mms/entities/SmsItem;)V

    .line 278
    return-void
.end method
