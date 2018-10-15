.class Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;
.super Lcom/iflytek/yd/base/BaseThread;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/speech/impl/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

.field private b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private c:Lcom/iflytek/yd/speech/vad/VadData;

.field private d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:Z


# direct methods
.method private constructor <init>(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 858
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-direct {p0}, Lcom/iflytek/yd/base/BaseThread;-><init>()V

    .line 859
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 860
    new-instance v0, Lcom/iflytek/yd/speech/vad/VadData;

    invoke-direct {v0}, Lcom/iflytek/yd/speech/vad/VadData;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->c:Lcom/iflytek/yd/speech/vad/VadData;

    .line 861
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->d:Ljava/util/LinkedList;

    .line 862
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->e:Ljava/util/LinkedList;

    .line 863
    iput v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->f:I

    .line 864
    iput v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->g:I

    .line 865
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->h:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p2, "x1"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;

    .prologue
    .line 858
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;-><init>(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V

    return-void
.end method

.method private a([BLjava/util/LinkedList;)V
    .locals 3
    .param p1, "buff"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/LinkedList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    const/4 v2, 0x0

    .line 1078
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    array-length v1, p1

    new-array v0, v1, [B

    .line 1082
    .local v0, "tmp_data":[B
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1083
    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a([B)[B
    .locals 3
    .param p1, "byteData"    # [B

    .prologue
    .line 1034
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/audio/SpeexDenoiser;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1035
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    new-instance v2, Lcom/iflytek/yd/audio/SpeexDenoiser;

    invoke-direct {v2}, Lcom/iflytek/yd/audio/SpeexDenoiser;-><init>()V

    invoke-static {v1, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lcom/iflytek/yd/audio/SpeexDenoiser;)Lcom/iflytek/yd/audio/SpeexDenoiser;

    .line 1037
    :cond_0
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/audio/SpeexDenoiser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/yd/audio/SpeexDenoiser;->denoise([B)[B

    move-result-object v0

    .line 1038
    .local v0, "data":[B
    return-object v0
.end method

.method private b([BI)V
    .locals 9
    .param p1, "byteData"    # [B
    .param p2, "len"    # I

    .prologue
    const v8, 0xc350a

    const/16 v7, 0x14

    const/4 v6, 0x0

    .line 921
    invoke-static {p1}, Lcom/iflytek/yd/speech/vad/VadFileLog;->writeOriginalData([B)V

    .line 923
    if-eqz p2, :cond_8

    .line 925
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 926
    move-object v0, p1

    .line 928
    .local v0, "denoisData":[B
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljo;

    move-result-object v3

    invoke-interface {v3}, Ljo;->k()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->h:Z

    if-eqz v3, :cond_0

    .line 929
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a([B)[B

    move-result-object v0

    .line 931
    :cond_0
    invoke-static {v0}, Lcom/iflytek/yd/speech/vad/VadFileLog;->writeVadSent([B)V

    .line 932
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;

    move-result-object v3

    array-length v4, v0

    invoke-interface {v3, v0, v4}, Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;->appendData([BI)I

    move-result v1

    .line 933
    .local v1, "error":I
    if-eqz v1, :cond_2

    .line 934
    const-string/jumbo v3, "SPEECH_SpeechRecognizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIvwEngine appendData ERROR"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->e(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 936
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)I

    .line 938
    :cond_1
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3, v6}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)V

    .line 940
    :cond_2
    iget v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->f:I

    .line 941
    iget v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->f:I

    if-le v3, v7, :cond_4

    .line 942
    iput v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->f:I

    .line 943
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljo;

    move-result-object v3

    invoke-interface {v3}, Ljo;->l()I

    move-result v2

    .line 944
    .local v2, "usage":I
    const/16 v3, 0x3c

    if-le v2, v3, :cond_5

    .line 945
    iput-boolean v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->h:Z

    .line 949
    :cond_3
    :goto_0
    const-string/jumbo v3, "SPEECH_SpeechRecognizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vadCheck Ivw appendData OK cpu="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " den="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->h:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    .end local v0    # "denoisData":[B
    .end local v1    # "error":I
    .end local v2    # "usage":I
    :cond_4
    :goto_1
    return-void

    .line 946
    .restart local v0    # "denoisData":[B
    .restart local v1    # "error":I
    .restart local v2    # "usage":I
    :cond_5
    if-ge v2, v7, :cond_3

    .line 947
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->h:Z

    goto :goto_0

    .line 955
    .end local v0    # "denoisData":[B
    .end local v1    # "error":I
    .end local v2    # "usage":I
    :cond_6
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->notifyVadAppend(I)V

    .line 957
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/vad/VadCheck;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->c:Lcom/iflytek/yd/speech/vad/VadData;

    invoke-virtual {v3, p1, p2, v4}, Lcom/iflytek/yd/speech/vad/VadCheck;->checkVAD([BILcom/iflytek/yd/speech/vad/VadData;)I

    .line 958
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    move-result-object v3

    sget-object v4, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Recording:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-ne v3, v4, :cond_7

    .line 960
    iget v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->g:I

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->c:Lcom/iflytek/yd/speech/vad/VadData;

    iget v4, v4, Lcom/iflytek/yd/speech/vad/VadData;->volumeLevel:I

    if-eq v3, v4, :cond_7

    .line 961
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->c:Lcom/iflytek/yd/speech/vad/VadData;

    iget v4, v4, Lcom/iflytek/yd/speech/vad/VadData;->volumeLevel:I

    invoke-static {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)V

    .line 962
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->c:Lcom/iflytek/yd/speech/vad/VadData;

    iget v3, v3, Lcom/iflytek/yd/speech/vad/VadData;->volumeLevel:I

    iput v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->g:I

    .line 966
    :cond_7
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;[B)V

    .line 969
    :cond_8
    if-nez p2, :cond_9

    .line 970
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    move-result-object v3

    invoke-interface {v3}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->notifyVadEnd()V

    .line 971
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/vad/VadCheck;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/yd/speech/vad/VadCheck;->endData()I

    .line 974
    :cond_9
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->c:Lcom/iflytek/yd/speech/vad/VadData;

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/vad/VadCheck;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->c:Lcom/iflytek/yd/speech/vad/VadData;

    invoke-virtual {v4, v5}, Lcom/iflytek/yd/speech/vad/VadCheck;->fixFetchData(Lcom/iflytek/yd/speech/vad/VadData;)I

    move-result v4

    iput v4, v3, Lcom/iflytek/yd/speech/vad/VadData;->status:I

    .line 981
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->c:Lcom/iflytek/yd/speech/vad/VadData;

    iget-object v4, v4, Lcom/iflytek/yd/speech/vad/VadData;->feaData:[B

    invoke-static {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;[B)V

    .line 984
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 985
    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lja;

    move-result-object v3

    invoke-virtual {v3}, Lja;->a()I

    move-result v3

    if-nez v3, :cond_f

    .line 986
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;[B)V

    .line 992
    :goto_2
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->c:Lcom/iflytek/yd/speech/vad/VadData;

    iget-object v3, v3, Lcom/iflytek/yd/speech/vad/VadData;->cmpFeaData:[B

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->d:Ljava/util/LinkedList;

    invoke-direct {p0, v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a([BLjava/util/LinkedList;)V

    .line 994
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->c:Lcom/iflytek/yd/speech/vad/VadData;

    iget v3, v3, Lcom/iflytek/yd/speech/vad/VadData;->lastSpeechStart:I

    if-ltz v3, :cond_a

    .line 995
    const-string/jumbo v3, "SPEECH_SpeechRecognizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vadCheck. SpeechStart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->c:Lcom/iflytek/yd/speech/vad/VadData;

    iget v5, v5, Lcom/iflytek/yd/speech/vad/VadData;->lastSpeechStart:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " SpeechEnd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->c:Lcom/iflytek/yd/speech/vad/VadData;

    iget v5, v5, Lcom/iflytek/yd/speech/vad/VadData;->lastSpeechEnd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " SpeechQuality="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->c:Lcom/iflytek/yd/speech/vad/VadData;

    iget v5, v5, Lcom/iflytek/yd/speech/vad/VadData;->lastSpeechQuality:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " SpeechFirstOut="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->c:Lcom/iflytek/yd/speech/vad/VadData;

    iget v5, v5, Lcom/iflytek/yd/speech/vad/VadData;->lastSpeechFirstOut:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->c:Lcom/iflytek/yd/speech/vad/VadData;

    iget v4, v4, Lcom/iflytek/yd/speech/vad/VadData;->lastSpeechFirstOut:I

    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->c:Lcom/iflytek/yd/speech/vad/VadData;

    iget v5, v5, Lcom/iflytek/yd/speech/vad/VadData;->lastSpeechStart:I

    iget-object v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->c:Lcom/iflytek/yd/speech/vad/VadData;

    iget v6, v6, Lcom/iflytek/yd/speech/vad/VadData;->lastSpeechEnd:I

    invoke-interface {v3, v4, v5, v6}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->notifyVadPos(III)V

    .line 1004
    :cond_a
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->c:Lcom/iflytek/yd/speech/vad/VadData;

    iget v3, v3, Lcom/iflytek/yd/speech/vad/VadData;->status:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_b

    .line 1005
    const-string/jumbo v3, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "vadCheckData  get endpoint"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    if-eqz p2, :cond_b

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    move-result-object v3

    sget-object v4, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Recording:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-ne v3, v4, :cond_b

    .line 1007
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->i(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljt;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Ljt;)V

    .line 1010
    :cond_b
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->c:Lcom/iflytek/yd/speech/vad/VadData;

    iget v3, v3, Lcom/iflytek/yd/speech/vad/VadData;->status:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_e

    .line 1011
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->e(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1012
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3, v8}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)I

    .line 1014
    :cond_c
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1015
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3, v8}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)I

    .line 1017
    :cond_d
    if-eqz p2, :cond_e

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    move-result-object v3

    sget-object v4, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Recording:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-ne v3, v4, :cond_e

    .line 1018
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->i(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljt;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Ljt;)V

    .line 1022
    :cond_e
    if-nez p2, :cond_4

    .line 1023
    const-string/jumbo v3, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "vadCheckData is FINISH"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->i(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljt;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Ljt;)V

    goto/16 :goto_1

    .line 989
    :cond_f
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->c:Lcom/iflytek/yd/speech/vad/VadData;

    iget-object v4, v4, Lcom/iflytek/yd/speech/vad/VadData;->cmpFeaData:[B

    invoke-static {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;[B)V

    goto/16 :goto_2
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 877
    return-void
.end method

.method public a([BI)Z
    .locals 2
    .param p1, "byData"    # [B
    .param p2, "nLen"    # I

    .prologue
    const/4 v1, 0x0

    .line 870
    new-array v0, p2, [B

    .line 871
    .local v0, "data":[B
    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 872
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 880
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/vad/VadCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/vad/VadCheck;->reset()V

    .line 881
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->g:I

    .line 882
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 886
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 887
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 8

    .prologue
    .line 1049
    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->d:Ljava/util/LinkedList;

    .line 1050
    .local v4, "tmp_list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 1051
    .local v0, "count":I
    const/4 v2, 0x0

    .line 1052
    .local v2, "size_count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1053
    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1054
    .local v3, "tmp_data":[B
    array-length v5, v3

    add-int/2addr v2, v5

    .line 1055
    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v5, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;[B)V

    .line 1052
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1057
    .end local v3    # "tmp_data":[B
    :cond_0
    const-string/jumbo v5, "SPEECH_SpeechRecognizer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reAppendData END size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    return-void
.end method

.method public f()V
    .locals 8

    .prologue
    .line 1065
    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->e:Ljava/util/LinkedList;

    .line 1066
    .local v4, "tmp_list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 1067
    .local v0, "count":I
    const/4 v2, 0x0

    .line 1068
    .local v2, "size_count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1069
    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1070
    .local v3, "tmp_data":[B
    array-length v5, v3

    add-int/2addr v2, v5

    .line 1071
    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v5, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;[B)V

    .line 1072
    const-wide/16 v6, 0x1e

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 1068
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1074
    .end local v3    # "tmp_data":[B
    :cond_0
    const-string/jumbo v5, "SPEECH_SpeechRecognizer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reAppendData END size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    return-void
.end method

.method protected threadProc()V
    .locals 6

    .prologue
    .line 890
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->setPriority(I)V

    .line 891
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->running:Z

    if-eqz v3, :cond_2

    .line 892
    const/4 v0, 0x0

    .line 894
    .local v0, "byData":[B
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "byData":[B
    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    .restart local v0    # "byData":[B
    if-eqz v0, :cond_0

    .line 901
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    .line 902
    .local v2, "size":I
    if-lez v2, :cond_1

    .line 903
    const-string/jumbo v3, "SPEECH_SpeechRecognizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VADThread take data size."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 904
    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 903
    invoke-static {v3, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    :cond_1
    array-length v3, v0

    invoke-direct {p0, v0, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->b([BI)V

    goto :goto_0

    .line 895
    .end local v0    # "byData":[B
    .end local v2    # "size":I
    :catch_0
    move-exception v1

    .line 896
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "VADThread queueAudioData.take() error"

    invoke-static {v3, v4, v1}, Lcom/iflytek/yd/log/LoggingTime;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 897
    const/16 v3, 0x1388

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->sleep(I)V

    goto :goto_0

    .line 909
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    return-void
.end method
