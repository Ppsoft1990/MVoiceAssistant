.class Layl$b;
.super Ljava/lang/Thread;
.source "TranslatePicRequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Layl;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Layl;ILjava/lang/String;)V
    .locals 1
    .param p2, "key"    # I
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Layl$b;->a:Layl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Layl$b;->b:I

    .line 100
    const-string/jumbo v0, ""

    iput-object v0, p0, Layl$b;->c:Ljava/lang/String;

    .line 102
    iput p2, p0, Layl$b;->b:I

    .line 103
    iput-object p3, p0, Layl$b;->c:Ljava/lang/String;

    .line 104
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 107
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 108
    iget-object v2, p0, Layl$b;->a:Layl;

    invoke-static {v2}, Layl;->b(Layl;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 110
    .local v0, "msg":Landroid/os/Message;
    const-string/jumbo v2, ""

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 111
    iget v2, p0, Layl$b;->b:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 112
    iget-object v2, p0, Layl$b;->a:Layl;

    invoke-static {v2}, Layl;->c(Layl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 131
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v2, p0, Layl$b;->a:Layl;

    iget-object v3, p0, Layl$b;->c:Ljava/lang/String;

    iget-object v4, p0, Layl$b;->a:Layl;

    invoke-static {v4}, Layl;->b(Layl;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Layl;->a(Layl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 117
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 118
    .restart local v0    # "msg":Landroid/os/Message;
    const-string/jumbo v2, ""

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 120
    iget-object v2, p0, Layl$b;->a:Layl;

    invoke-static {v2}, Layl;->c(Layl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 121
    const-string/jumbo v2, "TranslatePicRequestHelper"

    const-string/jumbo v3, "TAG_ERROR_MAX"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 126
    .restart local v0    # "msg":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    iget v2, p0, Layl$b;->b:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 128
    iget-object v2, p0, Layl$b;->a:Layl;

    invoke-static {v2}, Layl;->c(Layl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 129
    const-string/jumbo v2, "TranslatePicRequestHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TAG_OCR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Layl$b;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
