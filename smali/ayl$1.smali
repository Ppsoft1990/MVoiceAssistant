.class Layl$1;
.super Ljava/lang/Object;
.source "TranslatePicRequestHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layl;-><init>(Layl$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Layl;


# direct methods
.method constructor <init>(Layl;)V
    .locals 0
    .param p1, "this$0"    # Layl;

    .prologue
    .line 55
    iput-object p1, p0, Layl$1;->a:Layl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return v3

    .line 61
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 64
    :pswitch_0
    iget-object v0, p0, Layl$1;->a:Layl;

    invoke-static {v0}, Layl;->a(Layl;)Layl$a;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {v0, v3, v1, v2}, Layl$a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :pswitch_1
    iget-object v0, p0, Layl$1;->a:Layl;

    invoke-static {v0}, Layl;->a(Layl;)Layl$a;

    move-result-object v0

    const-string/jumbo v1, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    const-string/jumbo v2, ""

    invoke-interface {v0, v4, v1, v2}, Layl$a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :pswitch_2
    iget-object v0, p0, Layl$1;->a:Layl;

    invoke-static {v0}, Layl;->a(Layl;)Layl$a;

    move-result-object v0

    const-string/jumbo v1, "\u56fe\u7247\u8fc7\u5927\uff0c\u8bf7\u66f4\u6362\u540e\u518d\u8bd5"

    const-string/jumbo v2, ""

    invoke-interface {v0, v4, v1, v2}, Layl$a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
