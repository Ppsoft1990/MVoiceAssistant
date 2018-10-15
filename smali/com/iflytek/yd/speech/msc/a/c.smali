.class public final Lcom/iflytek/yd/speech/msc/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/yd/speech/msc/interfaces/IMscCallback;
.implements Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;


# static fields
.field private static final a:Ljava/lang/String; = "SPEECH_MscRecognizer"

.field private static final b:I = 0x40

.field private static final c:I = 0x4e20

.field private static final d:I = 0x2710


# instance fields
.field private e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

.field private f:I

.field private g:Lcom/iflytek/yd/speech/msc/a/i;

.field private h:Lcom/iflytek/yd/speech/msc/a/h;

.field private i:Z

.field private j:Lcom/iflytek/yd/speech/msc/a/a;

.field private k:Lcom/iflytek/yd/speech/msc/a/b;

.field private l:Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

.field private m:Ljava/lang/String;

.field private n:Lcom/iflytek/yd/business/AppConfig;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Lcom/iflytek/yd/speech/msc/a/k;

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;Lcom/iflytek/yd/business/AppConfig;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->f:I

    iput-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    sget-object v0, Lcom/iflytek/yd/speech/msc/a/h;->a:Lcom/iflytek/yd/speech/msc/a/h;

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->h:Lcom/iflytek/yd/speech/msc/a/h;

    iput-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/c;->i:Z

    iput-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->j:Lcom/iflytek/yd/speech/msc/a/a;

    iput-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->k:Lcom/iflytek/yd/speech/msc/a/b;

    iput-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->l:Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    iput-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->n:Lcom/iflytek/yd/business/AppConfig;

    iput-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->p:I

    new-instance v0, Lcom/iflytek/yd/speech/msc/a/k;

    invoke-direct {v0, v2}, Lcom/iflytek/yd/speech/msc/a/k;-><init>(I)V

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    iput-boolean v2, p0, Lcom/iflytek/yd/speech/msc/a/c;->r:Z

    new-instance v0, Lcom/iflytek/yd/speech/msc/a/a;

    invoke-direct {v0, p1}, Lcom/iflytek/yd/speech/msc/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->j:Lcom/iflytek/yd/speech/msc/a/a;

    new-instance v0, Lcom/iflytek/yd/speech/msc/a/b;

    invoke-direct {v0, p1}, Lcom/iflytek/yd/speech/msc/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->k:Lcom/iflytek/yd/speech/msc/a/b;

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->j:Lcom/iflytek/yd/speech/msc/a/a;

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->l:Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    iput-object p2, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    invoke-static {p0}, Lcom/iflytek/yd/speech/msc/a/a;->a(Lcom/iflytek/yd/speech/msc/interfaces/IMscCallback;)V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->j:Lcom/iflytek/yd/speech/msc/a/a;

    invoke-virtual {v0, p3}, Lcom/iflytek/yd/speech/msc/a/a;->a(Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;)V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->k:Lcom/iflytek/yd/speech/msc/a/b;

    invoke-virtual {v0, p3}, Lcom/iflytek/yd/speech/msc/a/b;->a(Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;)V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->j:Lcom/iflytek/yd/speech/msc/a/a;

    invoke-virtual {v0, p4}, Lcom/iflytek/yd/speech/msc/a/a;->a(Lcom/iflytek/yd/business/AppConfig;)V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->k:Lcom/iflytek/yd/speech/msc/a/b;

    invoke-virtual {v0, p4}, Lcom/iflytek/yd/speech/msc/a/b;->a(Lcom/iflytek/yd/business/AppConfig;)V

    iput-object p4, p0, Lcom/iflytek/yd/speech/msc/a/c;->n:Lcom/iflytek/yd/business/AppConfig;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/a;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->j:Lcom/iflytek/yd/speech/msc/a/a;

    return-object v0
.end method

.method private declared-synchronized a()Lcom/iflytek/yd/speech/msc/a/h;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->h:Lcom/iflytek/yd/speech/msc/a/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a([Ljava/lang/String;Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x22

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    const/4 v2, 0x1

    new-array p0, v2, [Ljava/lang/String;

    const-string/jumbo v2, ""

    aput-object v2, p0, v0

    :cond_0
    sget-object v2, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->contact:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    if-ne p1, v2, :cond_1

    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, p0, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->userword:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    if-ne p1, v2, :cond_4

    const-string/jumbo v2, "{\"userword\":[{\"name\": \"MyHotWords\",\"words\":["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    :goto_1
    if-ge v0, v2, :cond_3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v3, p0, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_2

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "]}]}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/yd/speech/msc/a/c;Lcom/iflytek/yd/speech/msc/a/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/h;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/iflytek/yd/speech/msc/a/h;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/iflytek/yd/speech/msc/a/c;->h:Lcom/iflytek/yd/speech/msc/a/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a([Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/c;->a()Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v1

    sget-object v2, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uploadContact-mStatus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/c;->h:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    const-string/jumbo v1, "SPEECH_MscRecognizer"

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    const/4 v2, 0x0

    const v3, 0xc3505

    invoke-interface {v1, v2, p2, v3, p3}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onUploadResult(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    if-nez v1, :cond_2

    const-string/jumbo v1, "uploadContact-mMessageProcess=null"

    iput-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    const-string/jumbo v1, "SPEECH_MscRecognizer"

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    const/4 v2, 0x0

    const v3, 0xc3505

    invoke-interface {v1, v2, p2, v3, p3}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onUploadResult(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    new-instance v0, Lcom/iflytek/yd/speech/msc/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/yd/speech/msc/a/g;-><init>(Lcom/iflytek/yd/speech/msc/a/c;B)V

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/j;->g:Lcom/iflytek/yd/speech/msc/a/j;

    iput-object v1, v0, Lcom/iflytek/yd/speech/msc/a/g;->a:Lcom/iflytek/yd/speech/msc/a/j;

    iput-object p1, v0, Lcom/iflytek/yd/speech/msc/a/g;->b:Ljava/lang/Object;

    iput-object p2, v0, Lcom/iflytek/yd/speech/msc/a/g;->c:Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/yd/speech/msc/a/g;->d:Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    invoke-virtual {v1, v0}, Lcom/iflytek/yd/speech/msc/a/i;->a(Lcom/iflytek/yd/speech/msc/a/g;)Z

    sget-object v0, Lcom/iflytek/yd/speech/msc/a/h;->g:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-direct {p0, v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    return-object v0
.end method

.method private static b([Ljava/lang/String;Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x22

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    const/4 v2, 0x1

    new-array p0, v2, [Ljava/lang/String;

    const-string/jumbo v2, ""

    aput-object v2, p0, v0

    :cond_0
    sget-object v2, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->contact:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    if-ne p1, v2, :cond_1

    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, p0, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->userword:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    if-ne p1, v2, :cond_4

    const-string/jumbo v2, "{\"userword\":[{\"name\": \"MyHotWords\",\"words\":["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    :goto_1
    if-ge v0, v2, :cond_3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v3, p0, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_2

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "]}]}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/yd/speech/msc/a/c;)I
    .locals 1

    iget v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->p:I

    return v0
.end method

.method static synthetic d(Lcom/iflytek/yd/speech/msc/a/c;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->r:Z

    return v0
.end method

.method static synthetic e(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->l:Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/h;
    .locals 1

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/c;->a()Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/yd/speech/msc/a/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/yd/speech/msc/a/c;)I
    .locals 1

    iget v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->f:I

    return v0
.end method

.method static synthetic i(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/b;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->k:Lcom/iflytek/yd/speech/msc/a/b;

    return-object v0
.end method

.method static synthetic j(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/i;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    return-object v0
.end method

.method static synthetic k(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/i;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    return-object v0
.end method

.method static synthetic l(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/h;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->h:Lcom/iflytek/yd/speech/msc/a/h;

    return-object v0
.end method

.method static synthetic m(Lcom/iflytek/yd/speech/msc/a/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->i:Z

    return v0
.end method

.method static synthetic n(Lcom/iflytek/yd/speech/msc/a/c;)Lcom/iflytek/yd/speech/msc/a/k;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    return-object v0
.end method

.method static synthetic o(Lcom/iflytek/yd/speech/msc/a/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/iflytek/yd/speech/msc/a/c;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->i:Z

    return v0
.end method


# virtual methods
.method public final declared-synchronized abortRecognize(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/c;->a()Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v0

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/c;->a()Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v0

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->e:Lcom/iflytek/yd/speech/msc/a/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    if-nez v0, :cond_2

    const-string/jumbo v0, "abortRecognize-mMessageProcess=null"

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    const-string/jumbo v0, "SPEECH_MscRecognizer"

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    const v1, 0xc38f0

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/i;->a()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    invoke-virtual {v0, p1}, Lcom/iflytek/yd/speech/msc/a/i;->a(I)V

    sget-object v0, Lcom/iflytek/yd/speech/msc/a/h;->e:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-direct {p0, v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/h;)V

    new-instance v0, Lcom/iflytek/yd/speech/msc/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/yd/speech/msc/a/g;-><init>(Lcom/iflytek/yd/speech/msc/a/c;B)V

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/j;->e:Lcom/iflytek/yd/speech/msc/a/j;

    iput-object v1, v0, Lcom/iflytek/yd/speech/msc/a/g;->a:Lcom/iflytek/yd/speech/msc/a/j;

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    invoke-virtual {v1, v0}, Lcom/iflytek/yd/speech/msc/a/i;->a(Lcom/iflytek/yd/speech/msc/a/g;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "abortRecognize-AddMessage failure"

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    const-string/jumbo v0, "SPEECH_MscRecognizer"

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    const v1, 0xc38ee

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V

    :cond_3
    sget-object v0, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-direct {p0, v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized beginRecognize(Ljava/lang/String;Ljava/lang/String;IILcom/iflytek/yd/speech/msc/interfaces/MscType;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/iflytek/yd/speech/msc/a/k;

    invoke-direct {v0, p4}, Lcom/iflytek/yd/speech/msc/a/k;-><init>(I)V

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/k;->d()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->n:Lcom/iflytek/yd/business/AppConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->n:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/speech/msc/a/k;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/speech/msc/a/k;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/c;->a()Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v0

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "beginRecognize-mStatus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->h:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    const-string/jumbo v0, "SPEECH_MscRecognizer"

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    const v1, 0xc38ef

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    if-nez p2, :cond_3

    :try_start_1
    const-string/jumbo p2, "\u0000"

    :cond_3
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    if-nez v0, :cond_4

    const-string/jumbo v0, "beginRecognize-mMessageProcess=null"

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    const-string/jumbo v0, "SPEECH_MscRecognizer"

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    const v1, 0xc38f0

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    sget-object v0, Lcom/iflytek/yd/speech/msc/interfaces/MscType;->evaluate:Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    if-ne p5, v0, :cond_7

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->k:Lcom/iflytek/yd/speech/msc/a/b;

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->l:Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    :goto_1
    const-string/jumbo v0, "SPEECH_MscRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "beginRecognize type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/c;->l:Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p3, p0, Lcom/iflytek/yd/speech/msc/a/c;->p:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    sget-object v0, Lcom/iflytek/yd/speech/msc/a/h;->c:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-direct {p0, v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/h;)V

    new-instance v0, Lcom/iflytek/yd/speech/msc/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/yd/speech/msc/a/g;-><init>(Lcom/iflytek/yd/speech/msc/a/c;B)V

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/j;->c:Lcom/iflytek/yd/speech/msc/a/j;

    iput-object v1, v0, Lcom/iflytek/yd/speech/msc/a/g;->a:Lcom/iflytek/yd/speech/msc/a/j;

    iput-object p1, v0, Lcom/iflytek/yd/speech/msc/a/g;->b:Ljava/lang/Object;

    iput-object p2, v0, Lcom/iflytek/yd/speech/msc/a/g;->c:Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    invoke-virtual {v1, v0}, Lcom/iflytek/yd/speech/msc/a/i;->a(Lcom/iflytek/yd/speech/msc/a/g;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "beginRecognize-AddMessage failure"

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    const-string/jumbo v0, "SPEECH_MscRecognizer"

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    const v1, 0xc38ee

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V

    :cond_5
    sget-object v0, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-direct {p0, v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/h;)V

    :cond_6
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/speech/msc/a/i;->a(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->j:Lcom/iflytek/yd/speech/msc/a/a;

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->l:Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized downloadData(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/c;->a()Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v0

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mspSearch-mStatus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->h:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    const-string/jumbo v0, "SPEECH_MscRecognizer"

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    const/4 v1, 0x0

    const v2, 0xc38ef

    invoke-interface {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onDownloadResult([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    if-nez v0, :cond_2

    const-string/jumbo v0, "mspSearch-mMessageProcess=null"

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    const-string/jumbo v0, "SPEECH_MscRecognizer"

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    const/4 v1, 0x0

    const v2, 0xc38f0

    invoke-interface {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onDownloadResult([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    new-instance v0, Lcom/iflytek/yd/speech/msc/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/yd/speech/msc/a/g;-><init>(Lcom/iflytek/yd/speech/msc/a/c;B)V

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/j;->i:Lcom/iflytek/yd/speech/msc/a/j;

    iput-object v1, v0, Lcom/iflytek/yd/speech/msc/a/g;->a:Lcom/iflytek/yd/speech/msc/a/j;

    iput-object p1, v0, Lcom/iflytek/yd/speech/msc/a/g;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    invoke-virtual {v1, v0}, Lcom/iflytek/yd/speech/msc/a/i;->a(Lcom/iflytek/yd/speech/msc/a/g;)Z

    sget-object v0, Lcom/iflytek/yd/speech/msc/a/h;->h:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-direct {p0, v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final getErrCode()I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->l:Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public final getErrDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final getLoginId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/k;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getMspParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->l:Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    invoke-interface {v0, p1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->getSessionParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/k;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSessionToken()I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/k;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final declared-synchronized initialize(Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/iflytek/yd/speech/msc/a/c;->m:Ljava/lang/String;

    iput p2, p0, Lcom/iflytek/yd/speech/msc/a/c;->f:I

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/yd/speech/msc/a/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/yd/speech/msc/a/i;-><init>(Lcom/iflytek/yd/speech/msc/a/c;B)V

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/i;->start()V

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    const-string/jumbo v1, "MessageProcessThread"

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/speech/msc/a/i;->setName(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/iflytek/yd/speech/msc/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/yd/speech/msc/a/g;-><init>(Lcom/iflytek/yd/speech/msc/a/c;B)V

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/j;->b:Lcom/iflytek/yd/speech/msc/a/j;

    iput-object v1, v0, Lcom/iflytek/yd/speech/msc/a/g;->a:Lcom/iflytek/yd/speech/msc/a/j;

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    invoke-virtual {v1, v0}, Lcom/iflytek/yd/speech/msc/a/i;->a(Lcom/iflytek/yd/speech/msc/a/g;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isIdle()Z
    .locals 2

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/c;->a()Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v0

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRuning()Z
    .locals 2

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/c;->a()Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v0

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->c:Lcom/iflytek/yd/speech/msc/a/h;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/c;->a()Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v0

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->d:Lcom/iflytek/yd/speech/msc/a/h;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->r:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final notifyRecordClose()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/k;->o()V

    return-void
.end method

.method public final notifyRecordData()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/k;->n()V

    return-void
.end method

.method public final notifyRecordOpen()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/k;->l()V

    return-void
.end method

.method public final notifyRecordReady()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/k;->m()V

    return-void
.end method

.method public final notifyRecordStop(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    invoke-virtual {v0, p1}, Lcom/iflytek/yd/speech/msc/a/k;->a(I)V

    return-void
.end method

.method public final notifyUiFirstShow()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/k;->q()V

    return-void
.end method

.method public final notifyUiLastShow()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/k;->r()V

    return-void
.end method

.method public final notifyVadAppend(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/k;->p()V

    return-void
.end method

.method public final notifyVadEnd()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    return-void
.end method

.method public final notifyVadOut(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    invoke-virtual {v0, p1}, Lcom/iflytek/yd/speech/msc/a/k;->b(I)V

    return-void
.end method

.method public final notifyVadPos(III)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/yd/speech/msc/a/k;->a(III)V

    return-void
.end method

.method public final onNetStatus(IIILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    invoke-interface {v0, p1, p4}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onNetStatusChange(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized putRecordData([BI)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/c;->a()Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v0

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->c:Lcom/iflytek/yd/speech/msc/a/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/iflytek/yd/speech/msc/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/yd/speech/msc/a/g;-><init>(Lcom/iflytek/yd/speech/msc/a/c;B)V

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/j;->f:Lcom/iflytek/yd/speech/msc/a/j;

    iput-object v1, v0, Lcom/iflytek/yd/speech/msc/a/g;->a:Lcom/iflytek/yd/speech/msc/a/j;

    iput-object p1, v0, Lcom/iflytek/yd/speech/msc/a/g;->b:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/yd/speech/msc/a/g;->c:Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    invoke-virtual {v1, v0}, Lcom/iflytek/yd/speech/msc/a/i;->a(Lcom/iflytek/yd/speech/msc/a/g;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized reinitialize()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPEECH_MscRecognizer"

    const-string/jumbo v1, "reinitialize mMessageProcess null."

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/iflytek/yd/speech/msc/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/yd/speech/msc/a/g;-><init>(Lcom/iflytek/yd/speech/msc/a/c;B)V

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/j;->j:Lcom/iflytek/yd/speech/msc/a/j;

    iput-object v1, v0, Lcom/iflytek/yd/speech/msc/a/g;->a:Lcom/iflytek/yd/speech/msc/a/j;

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    invoke-virtual {v1, v0}, Lcom/iflytek/yd/speech/msc/a/i;->a(Lcom/iflytek/yd/speech/msc/a/g;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized searchText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->r:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "mspSearch-is running ."

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    const-string/jumbo v0, "SPEECH_MscRecognizer"

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    const/4 v1, 0x0

    const v2, 0xc38ef

    invoke-interface {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onSearchResult([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->r:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/iflytek/yd/speech/msc/a/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/iflytek/yd/speech/msc/a/e;-><init>(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string/jumbo v1, "MSC_SearchThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setMspParams(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->l:Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscEngine;->setMspParams(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final declared-synchronized stopRecognize()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->q:Lcom/iflytek/yd/speech/msc/a/k;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/msc/a/k;->e()V

    const-string/jumbo v0, "SPEECH_MscRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stopRecognize-mStatus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/c;->h:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/c;->a()Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v0

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/h;->c:Lcom/iflytek/yd/speech/msc/a/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    if-nez v0, :cond_2

    const-string/jumbo v0, "stopRecognize-mMessageProcess=null"

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    const-string/jumbo v0, "SPEECH_MscRecognizer"

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    const v1, 0xc38f0

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    sget-object v0, Lcom/iflytek/yd/speech/msc/a/h;->d:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-direct {p0, v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/h;)V

    new-instance v0, Lcom/iflytek/yd/speech/msc/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/yd/speech/msc/a/g;-><init>(Lcom/iflytek/yd/speech/msc/a/c;B)V

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/j;->d:Lcom/iflytek/yd/speech/msc/a/j;

    iput-object v1, v0, Lcom/iflytek/yd/speech/msc/a/g;->a:Lcom/iflytek/yd/speech/msc/a/j;

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    invoke-virtual {v1, v0}, Lcom/iflytek/yd/speech/msc/a/i;->a(Lcom/iflytek/yd/speech/msc/a/g;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "stopRecognize-AddMessage failure"

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    const-string/jumbo v0, "SPEECH_MscRecognizer"

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    const v1, 0xc38ee

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onError(I)V

    :cond_3
    sget-object v0, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-direct {p0, v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized uninitialize()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/yd/speech/msc/a/h;->a:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/c;->a()Lcom/iflytek/yd/speech/msc/a/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/iflytek/yd/speech/msc/a/c;->abortRecognize(I)V

    sget-object v0, Lcom/iflytek/yd/speech/msc/a/h;->a:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-direct {p0, v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/h;)V

    new-instance v0, Lcom/iflytek/yd/speech/msc/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/yd/speech/msc/a/g;-><init>(Lcom/iflytek/yd/speech/msc/a/c;B)V

    sget-object v1, Lcom/iflytek/yd/speech/msc/a/j;->a:Lcom/iflytek/yd/speech/msc/a/j;

    iput-object v1, v0, Lcom/iflytek/yd/speech/msc/a/g;->a:Lcom/iflytek/yd/speech/msc/a/j;

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    invoke-virtual {v1, v0}, Lcom/iflytek/yd/speech/msc/a/i;->a(Lcom/iflytek/yd/speech/msc/a/g;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized uploadCantoneseData(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/yd/speech/msc/a/c;->a()Lcom/iflytek/yd/speech/msc/a/h;

    move-result-object v2

    sget-object v3, Lcom/iflytek/yd/speech/msc/a/h;->b:Lcom/iflytek/yd/speech/msc/a/h;

    if-eq v2, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uploadContact-mStatus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/c;->h:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    const-string/jumbo v1, "SPEECH_MscRecognizer"

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    const/4 v2, 0x0

    const v3, 0xc3505

    const/4 v4, 0x1

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onUploadResult(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    if-nez v2, :cond_2

    const-string/jumbo v1, "uploadContact-mMessageProcess=null"

    iput-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    const-string/jumbo v1, "SPEECH_MscRecognizer"

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/c;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/c;->e:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    const/4 v2, 0x0

    const v3, 0xc3505

    const/4 v4, 0x1

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;->onUploadResult(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    new-instance v0, Lcom/iflytek/yd/speech/msc/a/g;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/iflytek/yd/speech/msc/a/g;-><init>(Lcom/iflytek/yd/speech/msc/a/c;B)V

    sget-object v2, Lcom/iflytek/yd/speech/msc/a/j;->h:Lcom/iflytek/yd/speech/msc/a/j;

    iput-object v2, v0, Lcom/iflytek/yd/speech/msc/a/g;->a:Lcom/iflytek/yd/speech/msc/a/j;

    iput-object p1, v0, Lcom/iflytek/yd/speech/msc/a/g;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/c;->g:Lcom/iflytek/yd/speech/msc/a/i;

    invoke-virtual {v2, v0}, Lcom/iflytek/yd/speech/msc/a/i;->a(Lcom/iflytek/yd/speech/msc/a/g;)Z

    sget-object v0, Lcom/iflytek/yd/speech/msc/a/h;->g:Lcom/iflytek/yd/speech/msc/a/h;

    invoke-direct {p0, v0}, Lcom/iflytek/yd/speech/msc/a/c;->a(Lcom/iflytek/yd/speech/msc/a/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method public final declared-synchronized uploadData2([Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/iflytek/yd/speech/msc/a/d;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/iflytek/yd/speech/msc/a/d;-><init>(Lcom/iflytek/yd/speech/msc/a/c;Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string/jumbo v1, "uploadThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
