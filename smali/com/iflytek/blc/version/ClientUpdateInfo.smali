.class public Lcom/iflytek/blc/version/ClientUpdateInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final Background:I = 0x3

.field public static final Force:I = 0x2

.field public static final NoNeed:I = 0x0

.field public static final UserChoice:I = 0x1


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->a:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->g:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->h:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->i:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->j:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->k:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->l:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->a:I

    iput-object p2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->j:Ljava/lang/String;

    iput-object p11, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->k:Ljava/lang/String;

    iput-object p12, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->l:Ljava/lang/String;

    iput-object p13, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/iflytek/blc/version/ClientUpdateInfo;

    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->h:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->h:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->c:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->c:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->i:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->i:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->g:Ljava/lang/String;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->g:Ljava/lang/String;

    if-eqz v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->f:Ljava/lang/String;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->f:Ljava/lang/String;

    if-eqz v2, :cond_d

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    goto :goto_0

    :cond_d
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->e:Ljava/lang/String;

    if-nez v2, :cond_e

    iget-object v2, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->e:Ljava/lang/String;

    if-eqz v2, :cond_f

    move v0, v1

    goto/16 :goto_0

    :cond_e
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    goto/16 :goto_0

    :cond_f
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->b:Ljava/lang/String;

    if-nez v2, :cond_10

    iget-object v2, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->b:Ljava/lang/String;

    if-eqz v2, :cond_11

    move v0, v1

    goto/16 :goto_0

    :cond_10
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    move v0, v1

    goto/16 :goto_0

    :cond_11
    iget v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->a:I

    iget v3, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->a:I

    if-eq v2, v3, :cond_12

    move v0, v1

    goto/16 :goto_0

    :cond_12
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->d:Ljava/lang/String;

    if-nez v2, :cond_13

    iget-object v2, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->d:Ljava/lang/String;

    if-eqz v2, :cond_14

    move v0, v1

    goto/16 :goto_0

    :cond_13
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    move v0, v1

    goto/16 :goto_0

    :cond_14
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->j:Ljava/lang/String;

    if-nez v2, :cond_15

    iget-object v2, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->j:Ljava/lang/String;

    if-eqz v2, :cond_16

    move v0, v1

    goto/16 :goto_0

    :cond_15
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    move v0, v1

    goto/16 :goto_0

    :cond_16
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->k:Ljava/lang/String;

    if-nez v2, :cond_17

    iget-object v2, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->k:Ljava/lang/String;

    if-eqz v2, :cond_18

    move v0, v1

    goto/16 :goto_0

    :cond_17
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    move v0, v1

    goto/16 :goto_0

    :cond_18
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->l:Ljava/lang/String;

    if-nez v2, :cond_19

    iget-object v2, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->l:Ljava/lang/String;

    if-eqz v2, :cond_1a

    move v0, v1

    goto/16 :goto_0

    :cond_19
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    move v0, v1

    goto/16 :goto_0

    :cond_1a
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->m:Ljava/lang/String;

    if-nez v2, :cond_1b

    iget-object v2, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->m:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_1b
    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/iflytek/blc/version/ClientUpdateInfo;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public getAssistantUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getAssistantVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getBdTimeWin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadCtrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getFileCheck()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getNoticeDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getShowId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdAssistant()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateType()I
    .locals 1

    iget v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->a:I

    return v0
.end method

.method public getUpdateVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->i:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->g:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->f:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->e:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->b:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->a:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->d:Ljava/lang/String;

    if-nez v2, :cond_7

    :goto_7
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    iget-object v1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7
.end method

.method public setAssistantUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->h:Ljava/lang/String;

    return-void
.end method

.method public setAssistantVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->j:Ljava/lang/String;

    return-void
.end method

.method public setBdTimeWin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->m:Ljava/lang/String;

    return-void
.end method

.method public setDownloadCtrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->k:Ljava/lang/String;

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setFileCheck(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->i:Ljava/lang/String;

    return-void
.end method

.method public setNoticeDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->l:Ljava/lang/String;

    return-void
.end method

.method public setShowId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public setThirdAssistant(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public setUpdateDetail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public setUpdateInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setUpdateType(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->a:I

    return-void
.end method

.method public setUpdateVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ClientUpdateInfo [updateType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", updateInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", downloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", updateVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", updateDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thirdAssistant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", showId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", assistantUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fileCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", assistantVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", downloadCtrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", noticeDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bdTimeWin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/blc/version/ClientUpdateInfo;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
