.class final Laop$b;
.super Landroid/os/Handler;
.source "SmsBusinessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Laop;


# direct methods
.method public constructor <init>(Laop;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 282
    iput-object p1, p0, Laop$b;->a:Laop;

    .line 283
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 284
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 289
    const-string/jumbo v1, "SmsBusinessManager"

    const-string/jumbo v2, "UIHandler | handleMessage"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, p0, Laop$b;->a:Laop;

    invoke-static {v1}, Laop;->a(Laop;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "SmsBusinessManager"

    const-string/jumbo v3, "UIHandler | handleMessage showSms"

    invoke-static {v1, v2, v3}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/base/mms/entities/SmsItem;

    .line 292
    .local v0, "item":Lcom/iflytek/base/mms/entities/SmsItem;
    iget-object v1, p0, Laop$b;->a:Laop;

    invoke-static {v1, v0}, Laop;->b(Laop;Lcom/iflytek/base/mms/entities/SmsItem;)V

    .line 293
    return-void
.end method
