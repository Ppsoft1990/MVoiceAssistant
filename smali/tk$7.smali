.class Ltk$7;
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
    .line 1088
    iput-object p1, p0, Ltk$7;->a:Ltk;

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
    .line 1091
    iget-object v0, p0, Ltk$7;->a:Ltk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltk;->d(Ltk;Z)Z

    .line 1092
    return-void
.end method

.method public onError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 1111
    iget-object v0, p0, Ltk$7;->a:Ltk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltk;->d(Ltk;Z)Z

    .line 1112
    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 1096
    iget-object v1, p0, Ltk$7;->a:Ltk;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ltk;->d(Ltk;Z)Z

    .line 1097
    iget-object v1, p0, Ltk$7;->a:Ltk;

    invoke-static {v1}, Ltk;->a(Ltk;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResult result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ltk$7;->a:Ltk;

    invoke-static {v1}, Ltk;->m(Ltk;)Laly;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1099
    iget-object v1, p0, Ltk$7;->a:Ltk;

    invoke-static {v1}, Ltk;->m(Ltk;)Laly;

    move-result-object v1

    invoke-virtual {v1, p1}, Laly;->a(Ljava/lang/String;)Lalx;

    move-result-object v0

    .line 1100
    .local v0, "signInfo":Lalx;
    if-eqz v0, :cond_0

    .line 1101
    iget-object v1, p0, Ltk$7;->a:Ltk;

    invoke-static {v1}, Ltk;->a(Ltk;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u7528\u6237\u7b7e\u5230\u4fe1\u606f\u8bf7\u6c42\u6210\u529f\uff0c\u5237\u65b0\u754c\u9762"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    iget-object v1, p0, Ltk$7;->a:Ltk;

    invoke-virtual {v1, v0}, Ltk;->a(Lalx;)V

    .line 1107
    .end local v0    # "signInfo":Lalx;
    :cond_0
    :goto_0
    return-void

    .line 1105
    :cond_1
    iget-object v1, p0, Ltk$7;->a:Ltk;

    invoke-static {v1}, Ltk;->a(Ltk;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onResult result is null "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
