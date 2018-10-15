.class Ltk$8;
.super Ljava/lang/Object;
.source "UserCenterFragment.java"

# interfaces
.implements Lalt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltk;


# direct methods
.method constructor <init>(Ltk;)V
    .locals 0
    .param p1, "this$0"    # Ltk;

    .prologue
    .line 1116
    iput-object p1, p0, Ltk$8;->a:Ltk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "returnCode"    # Ljava/lang/String;
    .param p2, "opCode"    # Ljava/lang/String;
    .param p3, "tip"    # Ljava/lang/String;

    .prologue
    .line 1119
    iget-object v0, p0, Ltk$8;->a:Ltk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltk;->e(Ltk;Z)Z

    .line 1120
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1121
    iget-object v0, p0, Ltk$8;->a:Ltk;

    invoke-virtual {v0, p3}, Ltk;->b(Ljava/lang/String;)V

    .line 1123
    :cond_0
    const-string/jumbo v0, "011003"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1124
    iget-object v0, p0, Ltk$8;->a:Ltk;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltk;->f(Ltk;Z)Z

    .line 1125
    iget-object v0, p0, Ltk$8;->a:Ltk;

    invoke-static {v0}, Ltk;->n(Ltk;)Ltk$a;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ltk$a;->sendEmptyMessage(I)Z

    .line 1127
    :cond_1
    return-void
.end method

.method public onError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 1151
    iget-object v0, p0, Ltk$8;->a:Ltk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltk;->e(Ltk;Z)Z

    .line 1152
    iget-object v0, p0, Ltk$8;->a:Ltk;

    const-string/jumbo v1, "\u7b7e\u5230\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Ltk;->b(Ljava/lang/String;)V

    .line 1153
    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 1131
    iget-object v2, p0, Ltk$8;->a:Ltk;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ltk;->e(Ltk;Z)Z

    .line 1132
    iget-object v2, p0, Ltk$8;->a:Ltk;

    invoke-static {v2}, Ltk;->a(Ltk;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onResult result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1134
    iget-object v2, p0, Ltk$8;->a:Ltk;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ltk;->f(Ltk;Z)Z

    .line 1135
    iget-object v2, p0, Ltk$8;->a:Ltk;

    invoke-static {v2}, Ltk;->m(Ltk;)Laly;

    move-result-object v2

    invoke-virtual {v2, p1}, Laly;->b(Ljava/lang/String;)Lalz;

    move-result-object v1

    .line 1136
    .local v1, "signLimitInfo":Lalz;
    if-eqz v1, :cond_0

    .line 1137
    iget-object v2, p0, Ltk$8;->a:Ltk;

    invoke-static {v2}, Ltk;->a(Ltk;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u7528\u6237\u7b7e\u5230\u4fe1\u606f\u8bf7\u6c42\u6210\u529f\uff0c\u5237\u65b0\u754c\u9762"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1139
    .local v0, "message":Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1140
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1141
    iget-object v2, p0, Ltk$8;->a:Ltk;

    invoke-static {v2}, Ltk;->n(Ltk;)Ltk$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Ltk$a;->sendMessage(Landroid/os/Message;)Z

    .line 1142
    iget-object v2, p0, Ltk$8;->a:Ltk;

    const-string/jumbo v3, "SignIn"

    invoke-static {v2, v3}, Ltk;->b(Ltk;Ljava/lang/String;)V

    .line 1147
    .end local v0    # "message":Landroid/os/Message;
    .end local v1    # "signLimitInfo":Lalz;
    :cond_0
    :goto_0
    return-void

    .line 1145
    :cond_1
    iget-object v2, p0, Ltk$8;->a:Ltk;

    invoke-static {v2}, Ltk;->a(Ltk;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onResult result is null "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
