.class Lcom/baidu/aiupdatesdk/obf/e$c;
.super Ljava/lang/Object;
.source "AsDownloadManager.java"

# interfaces
.implements Lcom/baidu/aiupdatesdk/obf/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/aiupdatesdk/obf/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/aiupdatesdk/obf/e;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/baidu/aiupdatesdk/obf/e;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/obf/e$c;->a:Lcom/baidu/aiupdatesdk/obf/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p2, p0, Lcom/baidu/aiupdatesdk/obf/e$c;->b:Landroid/content/Context;

    .line 178
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/e$c;->a:Lcom/baidu/aiupdatesdk/obf/e;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/e;->a(Lcom/baidu/aiupdatesdk/obf/e;)Lcom/baidu/aiupdatesdk/obf/e$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/e$c;->a:Lcom/baidu/aiupdatesdk/obf/e;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/e;->a(Lcom/baidu/aiupdatesdk/obf/e;)Lcom/baidu/aiupdatesdk/obf/e$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/aiupdatesdk/obf/e$b;->a()V

    .line 186
    :cond_0
    const-string/jumbo v0, "download: onStart"

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/ab;->a(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public a(IJJ)V
    .locals 6
    .param p1, "percent"    # I
    .param p2, "rcvLen"    # J
    .param p4, "fileSize"    # J

    .prologue
    .line 191
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/e$c;->a:Lcom/baidu/aiupdatesdk/obf/e;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/e;->a(Lcom/baidu/aiupdatesdk/obf/e;)Lcom/baidu/aiupdatesdk/obf/e$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/e$c;->a:Lcom/baidu/aiupdatesdk/obf/e;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/e;->a(Lcom/baidu/aiupdatesdk/obf/e;)Lcom/baidu/aiupdatesdk/obf/e$b;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/baidu/aiupdatesdk/obf/e$b;->a(IJJ)V

    .line 194
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5
    .param p1, "downloadPath"    # Ljava/lang/String;

    .prologue
    .line 221
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/e$c;->a:Lcom/baidu/aiupdatesdk/obf/e;

    iget-object v4, p0, Lcom/baidu/aiupdatesdk/obf/e$c;->b:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/baidu/aiupdatesdk/obf/e;->b(Lcom/baidu/aiupdatesdk/obf/e;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/e$c;->a:Lcom/baidu/aiupdatesdk/obf/e;

    invoke-static {v3}, Lcom/baidu/aiupdatesdk/obf/e;->b(Lcom/baidu/aiupdatesdk/obf/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "file":Ljava/io/File;
    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/e$c;->a:Lcom/baidu/aiupdatesdk/obf/e;

    invoke-static {v2}, Lcom/baidu/aiupdatesdk/obf/e;->a(Lcom/baidu/aiupdatesdk/obf/e;)Lcom/baidu/aiupdatesdk/obf/e$b;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/e$c;->a:Lcom/baidu/aiupdatesdk/obf/e;

    iget-object v4, p0, Lcom/baidu/aiupdatesdk/obf/e$c;->b:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/baidu/aiupdatesdk/obf/e;->b(Lcom/baidu/aiupdatesdk/obf/e;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/e$c;->a:Lcom/baidu/aiupdatesdk/obf/e;

    invoke-static {v3}, Lcom/baidu/aiupdatesdk/obf/e;->c(Lcom/baidu/aiupdatesdk/obf/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v1, "newPath":Ljava/io/File;
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 226
    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/e$c;->a:Lcom/baidu/aiupdatesdk/obf/e;

    invoke-static {v2}, Lcom/baidu/aiupdatesdk/obf/e;->a(Lcom/baidu/aiupdatesdk/obf/e;)Lcom/baidu/aiupdatesdk/obf/e$b;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/baidu/aiupdatesdk/obf/e$b;->a(Ljava/lang/String;)V

    .line 231
    .end local v1    # "newPath":Ljava/io/File;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "download: onSuccess, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/aiupdatesdk/obf/ab;->a(Ljava/lang/String;)V

    .line 232
    return-void

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/e$c;->a:Lcom/baidu/aiupdatesdk/obf/e;

    invoke-static {v2}, Lcom/baidu/aiupdatesdk/obf/e;->a(Lcom/baidu/aiupdatesdk/obf/e;)Lcom/baidu/aiupdatesdk/obf/e$b;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "download failed."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "download failed."

    invoke-interface {v2, v3, v4}, Lcom/baidu/aiupdatesdk/obf/e$b;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 199
    const-string/jumbo v0, "1012700a"

    sget-object v1, Lcom/baidu/aiupdatesdk/obf/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    const-string/jumbo v0, "1012700a"

    sput-object v0, Lcom/baidu/aiupdatesdk/obf/e;->a:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/e$c;->a:Lcom/baidu/aiupdatesdk/obf/e;

    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/e$c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/e$c;->a:Lcom/baidu/aiupdatesdk/obf/e;

    invoke-static {v2}, Lcom/baidu/aiupdatesdk/obf/e;->a(Lcom/baidu/aiupdatesdk/obf/e;)Lcom/baidu/aiupdatesdk/obf/e$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/aiupdatesdk/obf/e;->a(Landroid/content/Context;Lcom/baidu/aiupdatesdk/obf/e$b;)V

    .line 211
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/e$c;->a:Lcom/baidu/aiupdatesdk/obf/e;

    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/e$c;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/aiupdatesdk/obf/e;->a(Lcom/baidu/aiupdatesdk/obf/e;Landroid/content/Context;)V

    .line 206
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/e$c;->a:Lcom/baidu/aiupdatesdk/obf/e;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/e;->a(Lcom/baidu/aiupdatesdk/obf/e;)Lcom/baidu/aiupdatesdk/obf/e$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/e$c;->a:Lcom/baidu/aiupdatesdk/obf/e;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/e;->a(Lcom/baidu/aiupdatesdk/obf/e;)Lcom/baidu/aiupdatesdk/obf/e$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/baidu/aiupdatesdk/obf/e$b;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 210
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "download: onFail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/ab;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method
