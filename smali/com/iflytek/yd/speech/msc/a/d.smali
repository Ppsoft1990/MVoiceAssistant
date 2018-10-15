.class final Lcom/iflytek/yd/speech/msc/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/iflytek/yd/speech/msc/a/c;


# direct methods
.method constructor <init>(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/speech/msc/a/d;->d:Lcom/iflytek/yd/speech/msc/a/c;

    iput-object p2, p0, Lcom/iflytek/yd/speech/msc/a/d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/yd/speech/msc/a/d;->b:[Ljava/lang/String;

    iput p4, p0, Lcom/iflytek/yd/speech/msc/a/d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string/jumbo v0, "SPEECH_MscRecognizer"

    const-string/jumbo v1, "uploadData2 begin."

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->contact:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->userword:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->userword:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    :cond_0
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/d;->d:Lcom/iflytek/yd/speech/msc/a/c;

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/d;->b:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/iflytek/yd/speech/msc/a/c;->a([Ljava/lang/String;Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SPEECH_MscRecognizer"

    const-string/jumbo v3, "uploadData2 getUploadString ok"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/d;->d:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/yd/speech/msc/a/d;->c:I

    invoke-virtual {v2, v1, v0, v3}, Lcom/iflytek/yd/speech/msc/a/a;->a(Ljava/lang/String;Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;I)I

    move-result v0

    const-string/jumbo v1, "SPEECH_MscRecognizer"

    const-string/jumbo v2, "uploadData2 end"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/d;->d:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/d;->d:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/d;->a:Ljava/lang/String;

    iget v4, p0, Lcom/iflytek/yd/speech/msc/a/d;->c:I

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onUploadResult(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/d;->d:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/d;->a:Ljava/lang/String;

    iget v4, p0, Lcom/iflytek/yd/speech/msc/a/d;->c:I

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onUploadResult(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method
