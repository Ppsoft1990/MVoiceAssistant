.class final Lcom/iflytek/yd/speech/msc/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/iflytek/yd/speech/msc/a/c;


# direct methods
.method constructor <init>(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/speech/msc/a/e;->c:Lcom/iflytek/yd/speech/msc/a/c;

    iput-object p2, p0, Lcom/iflytek/yd/speech/msc/a/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/yd/speech/msc/a/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string/jumbo v0, "SPEECH_MscRecognizer"

    const-string/jumbo v1, "mspSearchText begin."

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/e;->c:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/e;->c:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v3}, Lcom/iflytek/yd/speech/msc/a/c;->c(Lcom/iflytek/yd/speech/msc/a/c;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/yd/speech/msc/a/a;->a(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/e;->c:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/e;->c:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/a;->getErrorCode()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onSearchResult([BI)V

    :goto_0
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/e;->c:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->d(Lcom/iflytek/yd/speech/msc/a/c;)Z

    const-string/jumbo v0, "SPEECH_MscRecognizer"

    const-string/jumbo v1, "mspSearchText end"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/e;->c:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onSearchResult([BI)V

    goto :goto_0
.end method
