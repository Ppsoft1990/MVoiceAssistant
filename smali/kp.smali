.class public Lkp;
.super Llc;


# static fields
.field private static b:Lkp;


# instance fields
.field private c:Lmo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lkp;->b:Lkp;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lko;)V
    .locals 1

    invoke-direct {p0}, Llc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkp;->c:Lmo;

    invoke-static {}, Lcom/iflytek/msc/MSC;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lmo;

    invoke-direct {v0, p1}, Lmo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lkp;->c:Lmo;

    :cond_0
    return-void
.end method

.method public static a()Lkp;
    .locals 1

    sget-object v0, Lkp;->b:Lkp;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lko;)Lkp;
    .locals 1

    sget-object v0, Lkp;->b:Lkp;

    if-nez v0, :cond_0

    new-instance v0, Lkp;

    invoke-direct {v0, p0, p1}, Lkp;-><init>(Landroid/content/Context;Lko;)V

    sput-object v0, Lkp;->b:Lkp;

    :cond_0
    sget-object v0, Lkp;->b:Lkp;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lkq;)I
    .locals 2

    iget-object v0, p0, Lkp;->c:Lmo;

    iget-object v1, p0, Lkp;->a:Lmc;

    invoke-virtual {v0, v1}, Lmo;->a(Lmc;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkp;->c:Lmo;

    invoke-virtual {v0, p1, p2, p3}, Lmo;->a(Ljava/lang/String;Ljava/lang/String;Lkq;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4e2c

    goto :goto_0
.end method

.method public a(Lkr;)I
    .locals 2

    iget-object v0, p0, Lkp;->c:Lmo;

    if-nez v0, :cond_0

    const/16 v0, 0x5209

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lkp;->c:Lmo;

    iget-object v1, p0, Lkp;->a:Lmc;

    invoke-virtual {v0, v1}, Lmo;->a(Lmc;)Z

    iget-object v0, p0, Lkp;->c:Lmo;

    invoke-virtual {v0, p1}, Lmo;->a(Lkr;)I

    move-result v0

    goto :goto_0
.end method

.method public a(I)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x9

    const/4 v3, 0x0

    iget-object v0, p0, Lkp;->c:Lmo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkp;->c:Lmo;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "023456789"

    invoke-virtual {v5, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v3

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-ge v2, v0, :cond_3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "023456789"

    invoke-virtual {v5, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/2addr v0, v6

    const/16 v6, 0xa

    if-ne v0, v6, :cond_1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_4
    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "SpeakerVerifier getPasswordList failed, is not running"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Llc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lkq;)V
    .locals 4

    iget-object v0, p0, Lkp;->c:Lmo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkp;->c:Lmo;

    const-string/jumbo v1, "params"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmo;->a(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lkp;->a:Lmc;

    const-string/jumbo v1, "subject"

    const-string/jumbo v2, "ivp"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lkp;->a:Lmc;

    const-string/jumbo v1, "rse"

    const-string/jumbo v2, "gb2312"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lkp;->c:Lmo;

    iget-object v1, p0, Lkp;->a:Lmc;

    invoke-virtual {v0, v1}, Lmo;->a(Lmc;)Z

    iget-object v0, p0, Lkp;->c:Lmo;

    invoke-virtual {v0, p1}, Lmo;->a(Lkq;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "SpeakerVerifier getPasswordList failed, is not running"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Llc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lkp;->c:Lmo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkp;->c:Lmo;

    invoke-virtual {v0}, Lmo;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkp;->c:Lmo;

    invoke-virtual {v0}, Lmo;->e()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "MscSpeechLog"

    const-string/jumbo v1, "SpeakerVerifier stopListening failed, is not running"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lkp;->c:Lmo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkp;->c:Lmo;

    invoke-virtual {v0}, Lmo;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lkp;->c:Lmo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkp;->c:Lmo;

    invoke-virtual {v0}, Lmo;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkp;->c:Lmo;

    invoke-virtual {v0}, Lmo;->c()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lkp;->c:Lmo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lkp;->c:Lmo;

    invoke-virtual {v0}, Lmo;->d()Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    sput-object v1, Lkp;->b:Lkp;

    :cond_1
    return v0
.end method
