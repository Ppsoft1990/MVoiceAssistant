.class final Lcom/baidu/aiupdatesdk/obf/g$a;
.super Lcom/baidu/aiupdatesdk/obf/j;
.source "BDFileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/aiupdatesdk/obf/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/aiupdatesdk/obf/g;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/baidu/aiupdatesdk/obf/g;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/baidu/aiupdatesdk/obf/g;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/obf/g$a;->a:Lcom/baidu/aiupdatesdk/obf/g;

    .line 140
    invoke-direct {p0, p2}, Lcom/baidu/aiupdatesdk/obf/j;-><init>(Landroid/os/Handler;)V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/aiupdatesdk/obf/g$a;->b:Z

    .line 141
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lcom/baidu/aiupdatesdk/obf/j;->a()V

    .line 146
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g$a;->a:Lcom/baidu/aiupdatesdk/obf/g;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/g;->c(Lcom/baidu/aiupdatesdk/obf/g;)Lcom/baidu/aiupdatesdk/obf/g$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/aiupdatesdk/obf/g$b;->a()V

    .line 147
    return-void
.end method

.method public a(IJJ)V
    .locals 6
    .param p1, "percent"    # I
    .param p2, "receiveLength"    # J
    .param p4, "fileSize"    # J

    .prologue
    .line 157
    invoke-super/range {p0 .. p5}, Lcom/baidu/aiupdatesdk/obf/j;->a(IJJ)V

    .line 158
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g$a;->a:Lcom/baidu/aiupdatesdk/obf/g;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/g;->c(Lcom/baidu/aiupdatesdk/obf/g;)Lcom/baidu/aiupdatesdk/obf/g$b;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/aiupdatesdk/obf/g$b;->a(IJJ)V

    .line 159
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0
    .param p1, "contentLength"    # I
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-super {p0, p1, p2}, Lcom/baidu/aiupdatesdk/obf/j;->a(ILjava/lang/String;)V

    .line 198
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/baidu/aiupdatesdk/obf/j;->a(Landroid/os/Message;)V

    .line 185
    return-void
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-super {p0, p1, p2}, Lcom/baidu/aiupdatesdk/obf/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g$a;->a:Lcom/baidu/aiupdatesdk/obf/g;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/g;->c(Lcom/baidu/aiupdatesdk/obf/g;)Lcom/baidu/aiupdatesdk/obf/g$b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aiupdatesdk/obf/g$b;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public a([BI)V
    .locals 1
    .param p1, "slice"    # [B
    .param p2, "length"    # I

    .prologue
    .line 189
    invoke-super {p0, p1, p2}, Lcom/baidu/aiupdatesdk/obf/j;->a([BI)V

    .line 190
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g$a;->a:Lcom/baidu/aiupdatesdk/obf/g;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/g;->e(Lcom/baidu/aiupdatesdk/obf/g;)Lcom/baidu/aiupdatesdk/obf/g$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g$a;->a:Lcom/baidu/aiupdatesdk/obf/g;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/g;->e(Lcom/baidu/aiupdatesdk/obf/g;)Lcom/baidu/aiupdatesdk/obf/g$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/aiupdatesdk/obf/g$c;->b()V

    .line 193
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lcom/baidu/aiupdatesdk/obf/j;->b()V

    .line 164
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g$a;->a:Lcom/baidu/aiupdatesdk/obf/g;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/g;->c(Lcom/baidu/aiupdatesdk/obf/g;)Lcom/baidu/aiupdatesdk/obf/g$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/aiupdatesdk/obf/g$b;->b()V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/aiupdatesdk/obf/g$a;->b:Z

    .line 166
    return-void
.end method

.method public b(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Lcom/baidu/aiupdatesdk/obf/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g$a;->a:Lcom/baidu/aiupdatesdk/obf/g;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/g;->d(Lcom/baidu/aiupdatesdk/obf/g;)V

    .line 172
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/baidu/aiupdatesdk/obf/j;->c()V

    .line 177
    iget-boolean v0, p0, Lcom/baidu/aiupdatesdk/obf/g$a;->b:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g$a;->a:Lcom/baidu/aiupdatesdk/obf/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/aiupdatesdk/obf/g;->a(Z)V

    .line 180
    :cond_0
    return-void
.end method
