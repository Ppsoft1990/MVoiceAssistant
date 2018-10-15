.class Lno$3;
.super Ljava/lang/Object;
.source "DownloadController.java"

# interfaces
.implements Lvt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lno;


# direct methods
.method constructor <init>(Lno;)V
    .locals 0
    .param p1, "this$0"    # Lno;

    .prologue
    .line 687
    iput-object p1, p0, Lno$3;->a:Lno;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlcError(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 697
    const-string/jumbo v1, "DownloadController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBlcError | type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :try_start_0
    iget-object v1, p0, Lno$3;->a:Lno;

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, p1, v3}, Lno;->a(Lcom/iflytek/yd/business/OperationInfo;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    :goto_0
    return-void

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DownloadController"

    const-string/jumbo v2, ""

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBlcResult(ILcom/iflytek/yd/business/OperationInfo;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "info"    # Lcom/iflytek/yd/business/OperationInfo;

    .prologue
    .line 691
    const-string/jumbo v0, "DownloadController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBlcResult | type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v0, p0, Lno$3;->a:Lno;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lno;->a(Lcom/iflytek/yd/business/OperationInfo;II)V

    .line 693
    return-void
.end method
