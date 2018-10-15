.class final Lcom/iflytek/yd/speech/msc/a/i;
.super Lcom/iflytek/yd/base/BaseThread;


# static fields
.field private static final c:I = 0x28


# instance fields
.field a:Ljava/util/concurrent/LinkedBlockingQueue;

.field final synthetic b:Lcom/iflytek/yd/speech/msc/a/c;

.field private d:I


# direct methods
.method private constructor <init>(Lcom/iflytek/yd/speech/msc/a/c;)V
    .locals 1

    iput-object p1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-direct {p0}, Lcom/iflytek/yd/base/BaseThread;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/yd/speech/msc/a/c;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/yd/speech/msc/a/i;-><init>(Lcom/iflytek/yd/speech/msc/a/c;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->contact:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->userword:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->userword:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    :cond_0
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/yd/speech/msc/a/a;->a(Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/msc/a/a;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onUploadResult(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Lcom/iflytek/yd/speech/msc/a/h;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/a;->getErrorCode()I

    move-result v2

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onUploadResult(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/k;->f()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->c(Lcom/iflytek/yd/speech/msc/a/c;)I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->sessionBegin(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onSessionBegin()V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->putText(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    const-string/jumbo v1, "onAsrBegin-sessionBegin failure"

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V

    :cond_3
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Lcom/iflytek/yd/speech/msc/a/h;)V

    goto :goto_0
.end method

.method private a([BI)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->l(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v0

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->l(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v0

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->e:Lcom/iflytek/yd/speech/msc/a/h;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->m(Lcom/iflytek/yd/speech/msc/a/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/k;->g()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->putAudioData([BI)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/iflytek/yd/speech/vad/VadFileLog;->writeVadSent([B)V

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/i;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    const-string/jumbo v1, "PutData-error == mAsrEngine.hasResult()"

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/i;->g()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V

    :cond_2
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/speech/msc/a/c;->abortRecognize(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    const-string/jumbo v1, "onSendFailure"

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/i;->g()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-virtual {v0, v2}, Lcom/iflytek/yd/speech/msc/a/c;->abortRecognize(I)V

    goto :goto_0
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->contact:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->userword:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->userword:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    :cond_0
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {p1, v0}, Lcom/iflytek/yd/speech/msc/a/c;->a([Ljava/lang/String;Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v2

    invoke-virtual {v2, v1, v0, p3}, Lcom/iflytek/yd/speech/msc/a/a;->b(Ljava/lang/String;Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/msc/a/a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/a;->getErrorCode()I

    move-result v2

    invoke-interface {v0, v1, p2, v2, p3}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onUploadResult(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Lcom/iflytek/yd/speech/msc/a/h;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/a;->getErrorCode()I

    move-result v2

    invoke-interface {v0, v1, p2, v2, p3}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onUploadResult(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->f(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v0

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->a:Lcom/iflytek/yd/speech/msc/a/h;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Lcom/iflytek/yd/speech/msc/a/h;)V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->g(Lcom/iflytek/yd/speech/msc/a/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->h(Lcom/iflytek/yd/speech/msc/a/c;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/a/a;->initialize(Ljava/lang/String;I)Z

    move-result v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->i(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->g(Lcom/iflytek/yd/speech/msc/a/c;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v3}, Lcom/iflytek/yd/speech/msc/a/c;->h(Lcom/iflytek/yd/speech/msc/a/c;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/yd/speech/msc/a/b;->initialize(Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onInitFinish(Z)V

    :cond_0
    return-void
.end method

.method private b(Lcom/iflytek/yd/speech/msc/a/g;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    sget-object v0, Lcom/iflytek/yd/speech/msc/a/f;->a:[I

    iget-object v1, p1, Lcom/iflytek/yd/speech/msc/a/g;->a:Lcom/iflytek/yd/speech/msc/a/j;

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/msc/a/j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Lcom/iflytek/yd/speech/msc/a/g;->b:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, p1, Lcom/iflytek/yd/speech/msc/a/g;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->l(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v2

    sget-object v3, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->l(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v2

    sget-object v3, Lcom/iflytek/yd/speech/msc/a/h;->e:Lcom/iflytek/yd/speech/msc/a/h;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->m(Lcom/iflytek/yd/speech/msc/a/c;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/k;->g()V

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->putAudioData([BI)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/iflytek/yd/speech/vad/VadFileLog;->writeVadSent([B)V

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/i;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    const-string/jumbo v1, "PutData-error == mAsrEngine.hasResult()"

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/i;->g()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V

    :cond_1
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-virtual {v0, v6}, Lcom/iflytek/yd/speech/msc/a/c;->abortRecognize(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    const-string/jumbo v1, "onSendFailure"

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/i;->g()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-virtual {v0, v6}, Lcom/iflytek/yd/speech/msc/a/c;->abortRecognize(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p1, Lcom/iflytek/yd/speech/msc/a/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/iflytek/yd/speech/msc/a/g;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/k;->f()V

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v3}, Lcom/iflytek/yd/speech/msc/a/c;->c(Lcom/iflytek/yd/speech/msc/a/c;)I

    move-result v3

    invoke-interface {v2, v0, v1, v3}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->sessionBegin(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onSessionBegin()V

    :cond_3
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    invoke-interface {v0, v1, v5}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->putText(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    const-string/jumbo v1, "onAsrBegin-sessionBegin failure"

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V

    :cond_5
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Lcom/iflytek/yd/speech/msc/a/h;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/i;->g()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/k;->h()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->endPutData()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    const-string/jumbo v1, "onAsrEnd-mAsrEngine.endPutData()"

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "sessinfo"

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/k;->s()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->setSessionParams(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getUpTrafficFlow()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getDownTrafficFlow()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->setLastTrafficFlow(II)V

    :cond_7
    const-string/jumbo v0, "SPEECH_MscRecognizer"

    const-string/jumbo v1, "clear done"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->d:I

    if-ne v0, v6, :cond_b

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "user abort\u0000"

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->sessionEnd(Ljava/lang/String;)V

    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/yd/speech/msc/a/i;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const-string/jumbo v0, "SPEECH_MscRecognizer"

    const-string/jumbo v1, "clear done"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Lcom/iflytek/yd/speech/msc/a/h;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_4
    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->m(Lcom/iflytek/yd/speech/msc/a/c;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->running:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->l(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v2

    sget-object v3, Lcom/iflytek/yd/speech/msc/a/h;->e:Lcom/iflytek/yd/speech/msc/a/h;

    if-eq v2, v3, :cond_6

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/i;->h()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    const-string/jumbo v1, "onAsrEnd-error==mAsrEngine.hasResult()"

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/i;->g()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-lez v2, :cond_a

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    const-string/jumbo v1, "onAsrEnd-GetResult timeout! 15s"

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "SPEECH_MscRecognizer"

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->o(Lcom/iflytek/yd/speech/msc/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/i;->g()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    const v1, 0xc3504

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V

    goto/16 :goto_1

    :cond_a
    const/16 v2, 0x28

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/i;->sleep(I)V

    goto/16 :goto_4

    :cond_b
    iget v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->d:I

    if-ne v0, v7, :cond_c

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "app abort\u0000"

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->sessionEnd(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "\u0000"

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->sessionEnd(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v0, "SPEECH_MscRecognizer"

    const-string/jumbo v1, "clear Exception!"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0}, Lcom/iflytek/yd/speech/msc/a/i;->a()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/k;->j()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "sessinfo"

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/k;->s()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->setSessionParams(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getUpTrafficFlow()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getDownTrafficFlow()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->setLastTrafficFlow(II)V

    :cond_e
    iget v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->d:I

    if-ne v0, v7, :cond_f

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "app abort\u0000"

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->sessionEnd(Ljava/lang/String;)V

    :goto_5
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Lcom/iflytek/yd/speech/msc/a/h;)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "user abort\u0000"

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->sessionEnd(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_4
    iget-object v0, p1, Lcom/iflytek/yd/speech/msc/a/g;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p1, Lcom/iflytek/yd/speech/msc/a/g;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/iflytek/yd/speech/msc/a/g;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v2, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->contact:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    sget-object v4, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->userword:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    invoke-virtual {v4}, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v2, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->userword:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    :cond_10
    iget-object v4, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0, v2}, Lcom/iflytek/yd/speech/msc/a/c;->a([Ljava/lang/String;Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v4}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v3}, Lcom/iflytek/yd/speech/msc/a/a;->b(Ljava/lang/String;Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v4}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/yd/speech/msc/a/a;->getErrorCode()I

    move-result v4

    invoke-interface {v0, v2, v1, v4, v3}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onUploadResult(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_6
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Lcom/iflytek/yd/speech/msc/a/h;)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/a;->getErrorCode()I

    move-result v2

    invoke-interface {v0, v5, v1, v2, v3}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onUploadResult(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_6

    :pswitch_5
    iget-object v0, p1, Lcom/iflytek/yd/speech/msc/a/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->contact:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    sget-object v2, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->userword:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->userword:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    :cond_12
    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iflytek/yd/speech/msc/a/a;->a(Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, v3, v6}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onUploadResult(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_7
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Lcom/iflytek/yd/speech/msc/a/h;)V

    goto/16 :goto_0

    :cond_13
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/a;->getErrorCode()I

    move-result v2

    invoke-interface {v1, v5, v0, v2, v6}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onUploadResult(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_7

    :pswitch_6
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->f(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v0

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->a:Lcom/iflytek/yd/speech/msc/a/h;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Lcom/iflytek/yd/speech/msc/a/h;)V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->g(Lcom/iflytek/yd/speech/msc/a/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->h(Lcom/iflytek/yd/speech/msc/a/c;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/a/a;->initialize(Ljava/lang/String;I)Z

    move-result v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->i(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->g(Lcom/iflytek/yd/speech/msc/a/c;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v3}, Lcom/iflytek/yd/speech/msc/a/c;->h(Lcom/iflytek/yd/speech/msc/a/c;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/yd/speech/msc/a/b;->initialize(Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onInitFinish(Z)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->j(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/i;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/iflytek/yd/speech/msc/a/i;->stop(I)V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->k(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/i;

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/a;->unInitialize()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->i(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/b;->unInitialize()V

    invoke-static {v5}, Lcom/iflytek/yd/speech/msc/a/a;->a(Lcom/iflytek/yd/speech/msc/interfaces/IMscCallback;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p1, Lcom/iflytek/yd/speech/msc/a/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/yd/speech/msc/a/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/msc/a/a;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v5, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onDownloadResult([BI)V

    :goto_8
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Lcom/iflytek/yd/speech/msc/a/h;)V

    goto/16 :goto_0

    :cond_14
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    invoke-interface {v1, v0, v3}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onDownloadResult([BI)V

    goto :goto_8

    :pswitch_9
    sget-object v0, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->f(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/a;->unInitialize()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->i(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/b;->unInitialize()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->g(Lcom/iflytek/yd/speech/msc/a/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->h(Lcom/iflytek/yd/speech/msc/a/c;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/a/a;->initialize(Ljava/lang/String;I)Z

    move-result v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->i(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->g(Lcom/iflytek/yd/speech/msc/a/c;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v3}, Lcom/iflytek/yd/speech/msc/a/c;->h(Lcom/iflytek/yd/speech/msc/a/c;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/yd/speech/msc/a/b;->initialize(Ljava/lang/String;I)Z

    const-string/jumbo v1, "SPEECH_MscRecognizer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mMscAsrEngine return "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onInitFinish(Z)V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v0, "SPEECH_MscRecognizer"

    const-string/jumbo v1, "onAsrReinit not INITED status"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/yd/speech/msc/a/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/a;->getErrorCode()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onDownloadResult([BI)V

    :goto_0
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Lcom/iflytek/yd/speech/msc/a/h;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onDownloadResult([BI)V

    goto :goto_0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->j(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/speech/msc/a/i;->stop(I)V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->k(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/i;

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/a;->unInitialize()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->i(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/b;->unInitialize()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/a;->a(Lcom/iflytek/yd/speech/msc/interfaces/IMscCallback;)V

    return-void
.end method

.method private d()V
    .locals 4

    sget-object v0, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->f(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/a;->unInitialize()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->i(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/b;->unInitialize()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->g(Lcom/iflytek/yd/speech/msc/a/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->h(Lcom/iflytek/yd/speech/msc/a/c;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/a/a;->initialize(Ljava/lang/String;I)Z

    move-result v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->i(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->g(Lcom/iflytek/yd/speech/msc/a/c;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v3}, Lcom/iflytek/yd/speech/msc/a/c;->h(Lcom/iflytek/yd/speech/msc/a/c;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/yd/speech/msc/a/b;->initialize(Ljava/lang/String;I)Z

    const-string/jumbo v1, "SPEECH_MscRecognizer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mMscAsrEngine return "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onInitFinish(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "SPEECH_MscRecognizer"

    const-string/jumbo v1, "onAsrReinit not INITED status"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private e()V
    .locals 6

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/i;->g()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/k;->h()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->endPutData()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    const-string/jumbo v1, "onAsrEnd-mAsrEngine.endPutData()"

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "sessinfo"

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/k;->s()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->setSessionParams(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getUpTrafficFlow()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getDownTrafficFlow()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->setLastTrafficFlow(II)V

    :cond_1
    const-string/jumbo v0, "SPEECH_MscRecognizer"

    const-string/jumbo v1, "clear done"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "user abort\u0000"

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->sessionEnd(Ljava/lang/String;)V

    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/yd/speech/msc/a/i;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string/jumbo v0, "SPEECH_MscRecognizer"

    const-string/jumbo v1, "clear done"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Lcom/iflytek/yd/speech/msc/a/h;)V

    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_3
    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->m(Lcom/iflytek/yd/speech/msc/a/c;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->running:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->l(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v2

    sget-object v3, Lcom/iflytek/yd/speech/msc/a/h;->e:Lcom/iflytek/yd/speech/msc/a/h;

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/i;->h()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    const-string/jumbo v1, "onAsrEnd-error==mAsrEngine.hasResult()"

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/i;->g()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    const-string/jumbo v1, "onAsrEnd-GetResult timeout! 15s"

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "SPEECH_MscRecognizer"

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->o(Lcom/iflytek/yd/speech/msc/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/i;->g()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    const v1, 0xc3504

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x28

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/i;->sleep(I)V

    goto/16 :goto_3

    :cond_5
    iget v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "app abort\u0000"

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->sessionEnd(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "\u0000"

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->sessionEnd(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v0, "SPEECH_MscRecognizer"

    const-string/jumbo v1, "clear Exception!"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private f()V
    .locals 3

    invoke-virtual {p0}, Lcom/iflytek/yd/speech/msc/a/i;->a()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/k;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "sessinfo"

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/k;->s()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->setSessionParams(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getUpTrafficFlow()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getDownTrafficFlow()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->setLastTrafficFlow(II)V

    :cond_1
    iget v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "app abort\u0000"

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->sessionEnd(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Lcom/iflytek/yd/speech/msc/a/h;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "user abort\u0000"

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->sessionEnd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    const/16 v3, 0x40

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "sid"

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getSessionParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/yd/speech/msc/a/k;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "loginid"

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getSessionParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/yd/speech/msc/a/k;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private h()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getResultStatus()Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;

    move-result-object v2

    sget-object v3, Lcom/iflytek/yd/speech/msc/a/f;->b:[I

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/interfaces/MscResultStatus;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/k;->i()V

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v3}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v3

    invoke-interface {v3}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getResult()[B

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onResult([BZ)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/i;->g()V

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/msc/a/k;->k()V

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getResult()[B

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onResult([BZ)V

    :cond_1
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->p(Lcom/iflytek/yd/speech/msc/a/c;)Z

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SPEECH_MscRecognizer"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/yd/speech/msc/a/i;->d:I

    return-void
.end method

.method public final a(Lcom/iflytek/yd/speech/msc/a/g;)Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final threadProc()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/iflytek/yd/speech/msc/a/i;->setPriority(I)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->running:Z

    if-eqz v0, :cond_16

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/yd/speech/msc/a/g;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/f;->a:[I

    iget-object v2, v0, Lcom/iflytek/yd/speech/msc/a/g;->a:Lcom/iflytek/yd/speech/msc/a/j;

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/j;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, v0, Lcom/iflytek/yd/speech/msc/a/g;->b:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v0, v0, Lcom/iflytek/yd/speech/msc/a/g;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->l(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v2

    sget-object v3, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->l(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v2

    sget-object v3, Lcom/iflytek/yd/speech/msc/a/h;->e:Lcom/iflytek/yd/speech/msc/a/h;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->m(Lcom/iflytek/yd/speech/msc/a/c;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/k;->g()V

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->putAudioData([BI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/iflytek/yd/speech/vad/VadFileLog;->writeVadSent([B)V

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/i;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    const-string/jumbo v1, "PutData-error == mAsrEngine.hasResult()"

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/i;->g()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V

    :cond_1
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-virtual {v0, v6}, Lcom/iflytek/yd/speech/msc/a/c;->abortRecognize(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SPEECH_MscRecognizer"

    const-string/jumbo v2, "MessageProcessThread queueMessage.take() error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    const-string/jumbo v1, "onSendFailure"

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/i;->g()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-virtual {v0, v6}, Lcom/iflytek/yd/speech/msc/a/c;->abortRecognize(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, v0, Lcom/iflytek/yd/speech/msc/a/g;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/iflytek/yd/speech/msc/a/g;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/k;->f()V

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v3}, Lcom/iflytek/yd/speech/msc/a/c;->c(Lcom/iflytek/yd/speech/msc/a/c;)I

    move-result v3

    invoke-interface {v2, v1, v0, v3}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->sessionBegin(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onSessionBegin()V

    :cond_3
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v1

    invoke-interface {v1, v0, v7}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->putText(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    const-string/jumbo v1, "onAsrBegin-sessionBegin failure"

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V

    :cond_5
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Lcom/iflytek/yd/speech/msc/a/h;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/i;->g()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/k;->h()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->endPutData()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    const-string/jumbo v1, "onAsrEnd-mAsrEngine.endPutData()"

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "sessinfo"

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/k;->s()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->setSessionParams(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getUpTrafficFlow()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getDownTrafficFlow()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->setLastTrafficFlow(II)V

    :cond_7
    const-string/jumbo v0, "SPEECH_MscRecognizer"

    const-string/jumbo v1, "clear done"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->d:I

    if-ne v0, v6, :cond_b

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "user abort\u0000"

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->sessionEnd(Ljava/lang/String;)V

    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/iflytek/yd/speech/msc/a/i;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    const-string/jumbo v0, "SPEECH_MscRecognizer"

    const-string/jumbo v1, "clear done"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Lcom/iflytek/yd/speech/msc/a/h;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_4
    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->m(Lcom/iflytek/yd/speech/msc/a/c;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->running:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->l(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v2

    sget-object v3, Lcom/iflytek/yd/speech/msc/a/h;->e:Lcom/iflytek/yd/speech/msc/a/h;

    if-eq v2, v3, :cond_6

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/i;->h()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    const-string/jumbo v1, "onAsrEnd-error==mAsrEngine.hasResult()"

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/i;->g()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-lez v2, :cond_a

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    const-string/jumbo v1, "onAsrEnd-GetResult timeout! 15s"

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "SPEECH_MscRecognizer"

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->o(Lcom/iflytek/yd/speech/msc/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/i;->g()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    const v1, 0xc3504

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V

    goto/16 :goto_1

    :cond_a
    const/16 v2, 0x28

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/i;->sleep(I)V

    goto/16 :goto_4

    :cond_b
    iget v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->d:I

    if-ne v0, v9, :cond_c

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "app abort\u0000"

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->sessionEnd(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "\u0000"

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->sessionEnd(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v0, "SPEECH_MscRecognizer"

    const-string/jumbo v1, "clear Exception!"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0}, Lcom/iflytek/yd/speech/msc/a/i;->a()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/k;->j()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "sessinfo"

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/k;->s()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->setSessionParams(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getUpTrafficFlow()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getDownTrafficFlow()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->setLastTrafficFlow(II)V

    :cond_e
    iget v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->d:I

    if-ne v0, v9, :cond_f

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "app abort\u0000"

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->sessionEnd(Ljava/lang/String;)V

    :goto_5
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Lcom/iflytek/yd/speech/msc/a/h;)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, "user abort\u0000"

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->sessionEnd(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_4
    iget-object v1, v0, Lcom/iflytek/yd/speech/msc/a/g;->b:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    iget-object v2, v0, Lcom/iflytek/yd/speech/msc/a/g;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Lcom/iflytek/yd/speech/msc/a/g;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->contact:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    sget-object v4, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->userword:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    invoke-virtual {v4}, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->userword:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    :cond_10
    iget-object v4, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1, v0}, Lcom/iflytek/yd/speech/msc/a/c;->a([Ljava/lang/String;Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v4}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v4

    invoke-virtual {v4, v1, v0, v3}, Lcom/iflytek/yd/speech/msc/a/a;->b(Ljava/lang/String;Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/msc/a/a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v4}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/yd/speech/msc/a/a;->getErrorCode()I

    move-result v4

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onUploadResult(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_6
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Lcom/iflytek/yd/speech/msc/a/h;)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/msc/a/a;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v7, v2, v1, v3}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onUploadResult(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_6

    :pswitch_5
    iget-object v0, v0, Lcom/iflytek/yd/speech/msc/a/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->contact:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    sget-object v2, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->userword:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v1, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->userword:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    :cond_12
    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iflytek/yd/speech/msc/a/a;->a(Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, v8, v6}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onUploadResult(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_7
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Lcom/iflytek/yd/speech/msc/a/h;)V

    goto/16 :goto_0

    :cond_13
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/msc/a/a;->getErrorCode()I

    move-result v2

    invoke-interface {v1, v7, v0, v2, v6}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onUploadResult(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_7

    :pswitch_6
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->f(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v0

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->a:Lcom/iflytek/yd/speech/msc/a/h;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Lcom/iflytek/yd/speech/msc/a/h;)V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->g(Lcom/iflytek/yd/speech/msc/a/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->h(Lcom/iflytek/yd/speech/msc/a/c;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/a/a;->initialize(Ljava/lang/String;I)Z

    move-result v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->i(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->g(Lcom/iflytek/yd/speech/msc/a/c;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v3}, Lcom/iflytek/yd/speech/msc/a/c;->h(Lcom/iflytek/yd/speech/msc/a/c;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/yd/speech/msc/a/b;->initialize(Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onInitFinish(Z)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->j(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/i;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/iflytek/yd/speech/msc/a/i;->stop(I)V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->k(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/i;

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/a;->unInitialize()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->i(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/b;->unInitialize()V

    invoke-static {v7}, Lcom/iflytek/yd/speech/msc/a/a;->a(Lcom/iflytek/yd/speech/msc/interfaces/IMscCallback;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, v0, Lcom/iflytek/yd/speech/msc/a/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/yd/speech/msc/a/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/msc/a/a;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v7, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onDownloadResult([BI)V

    :goto_8
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-static {v0, v1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;Lcom/iflytek/yd/speech/msc/a/h;)V

    goto/16 :goto_0

    :cond_14
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    invoke-interface {v1, v0, v8}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onDownloadResult([BI)V

    goto :goto_8

    :pswitch_9
    sget-object v0, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->f(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/a;->unInitialize()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->i(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/b;->unInitialize()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->g(Lcom/iflytek/yd/speech/msc/a/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->h(Lcom/iflytek/yd/speech/msc/a/c;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/a/a;->initialize(Ljava/lang/String;I)Z

    move-result v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->i(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v2}, Lcom/iflytek/yd/speech/msc/a/c;->g(Lcom/iflytek/yd/speech/msc/a/c;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v3}, Lcom/iflytek/yd/speech/msc/a/c;->h(Lcom/iflytek/yd/speech/msc/a/c;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/yd/speech/msc/a/b;->initialize(Ljava/lang/String;I)Z

    const-string/jumbo v1, "SPEECH_MscRecognizer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mMscAsrEngine return "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v1}, Lcom/iflytek/yd/speech/msc/a/c;->b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onInitFinish(Z)V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v0, "SPEECH_MscRecognizer"

    const-string/jumbo v1, "onAsrReinit not INITED status"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/i;->b:Lcom/iflytek/yd/speech/msc/a/c;

    invoke-static {v0}, Lcom/iflytek/yd/speech/msc/a/c;->e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->sessionEnd(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
