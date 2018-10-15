.class public abstract Lacj;
.super Ljava/lang/Object;
.source "BaseResultHandlerInDial.java"


# instance fields
.field private a:Lacp;


# direct methods
.method public constructor <init>(Lacp;)V
    .locals 2
    .param p1, "pBusinessHandler"    # Lacp;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pBusinessHandler == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lacj;->a:Lacp;

    .line 41
    return-void
.end method

.method public static a(Lcom/iflytek/yd/speech/ViaAsrResult;)Z
    .locals 2
    .param p0, "pAsrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    const/4 v0, 0x1

    .line 109
    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v1

    if-ne v1, v0, :cond_0

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lacf;Laau;Ljava/lang/String;)V
    .locals 3
    .param p1, "pNextScenceData"    # Lacf;
    .param p2, "pFilterResult"    # Laau;
    .param p3, "pNoContactTip"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 141
    .line 142
    invoke-virtual {p0}, Lacj;->b()Lacp;

    move-result-object v1

    .line 145
    invoke-virtual {p1}, Lacf;->j()B

    move-result v2

    if-eq v0, v2, :cond_0

    .line 141
    :goto_0
    invoke-static {v1, p2, p3, v0}, Lacb;->a(Lacp;Laau;Ljava/lang/String;Z)V

    .line 146
    invoke-static {}, Lcom/iflytek/common/speech/asr/MscManager;->f()Lcom/iflytek/common/speech/asr/MscManager;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->CONTACT_RECOGNITION:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    invoke-virtual {v0, v1}, Lcom/iflytek/common/speech/asr/MscManager;->a(Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;)V

    .line 147
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lacj;->a:Lacp;

    invoke-interface {v0}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lace;Laau;)V
    .locals 8
    .param p1, "pNextScenceData"    # Lace;
    .param p2, "pFilterResult"    # Laau;

    .prologue
    const v1, 0x7f0c0369

    const v5, 0x7f0c0363

    const v4, 0x7f0c035f

    .line 157
    if-nez p1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 160
    :cond_0
    sget-object v0, Lcom/iflytek/framework/business/speech/InteractionScene;->select_contact_name:Lcom/iflytek/framework/business/speech/InteractionScene;

    invoke-static {v0}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setInteractionScene(Lcom/iflytek/framework/business/speech/InteractionScene;)V

    .line 161
    invoke-virtual {p1}, Lace;->a()Ljava/util/List;

    move-result-object v2

    .line 163
    .local v2, "contactSetList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    invoke-virtual {p0}, Lacj;->a()Landroid/content/Context;

    move-result-object v6

    .line 166
    .local v6, "context":Landroid/content/Context;
    const/4 v7, 0x0

    .line 167
    .local v7, "isReceiverCardFlag":Z
    instance-of v0, p1, Laci;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 168
    check-cast v0, Laci;

    invoke-virtual {v0}, Laci;->r()Z

    move-result v7

    .line 171
    :cond_1
    invoke-virtual {p1}, Lace;->k()I

    move-result v0

    if-lez v0, :cond_2

    .line 172
    const v0, 0x7f0c035a

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "ttsContent":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lacj;->b()Lacp;

    move-result-object v0

    .line 192
    invoke-virtual {p1}, Lace;->g()Ljava/lang/String;

    move-result-object v4

    .line 193
    invoke-virtual {p1}, Lace;->j()B

    move-result v5

    move-object v1, p2

    .line 187
    invoke-static/range {v0 .. v5}, Lacb;->a(Lacp;Laau;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;B)V

    goto :goto_0

    .line 174
    .end local v3    # "ttsContent":Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c0357

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "ttsContent":Ljava/lang/String;
    goto :goto_1

    .line 180
    .end local v3    # "ttsContent":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c0368

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "ttsContent":Ljava/lang/String;
    goto :goto_1
.end method

.method protected a(Lacf;Laau;Ljava/lang/String;)V
    .locals 0
    .param p1, "pNextScenceData"    # Lacf;
    .param p2, "pFilterResult"    # Laau;
    .param p3, "pNoContactTip"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Lacj;->b(Lacf;Laau;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public abstract a(Lcom/iflytek/viafly/dial/business30/DialCancelReason;)V
.end method

.method protected abstract a(Lcom/iflytek/yd/speech/ViaAsrResult;Lacf;Lacf;)V
.end method

.method protected abstract a(Lcom/iflytek/yd/speech/ViaAsrResult;Laau;Lacf;)Z
.end method

.method public a(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)Z
    .locals 8
    .param p1, "pAsrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "pFilterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 51
    instance-of v5, p2, Laau;

    if-nez v5, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pFilterResult is not a instance of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Laau;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "BaseResultHandlerInDial"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v5, p0, Lacj;->a:Lacp;

    invoke-interface {v5}, Lacp;->getScenceDataCache()Lacf;

    move-result-object v3

    .local v3, "lastScenceData":Lacf;
    move-object v1, p2

    .line 57
    check-cast v1, Laau;

    .line 59
    .local v1, "filterResult":Laau;
    invoke-virtual {p0, p1, v1, v3}, Lacj;->a(Lcom/iflytek/yd/speech/ViaAsrResult;Laau;Lacf;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 60
    const/4 v2, 0x0

    .line 70
    :goto_0
    return v2

    .line 63
    :cond_1
    invoke-virtual {p0, p1, v1, v3}, Lacj;->b(Lcom/iflytek/yd/speech/ViaAsrResult;Laau;Lacf;)Lacf;

    move-result-object v4

    .line 64
    .local v4, "nextScenceData":Lacf;
    iget-object v5, p0, Lacj;->a:Lacp;

    invoke-interface {v5, v4}, Lacp;->cacheScenceData(Lacf;)V

    .line 66
    invoke-virtual {p0, p1, v1, v4}, Lacj;->c(Lcom/iflytek/yd/speech/ViaAsrResult;Laau;Lacf;)Z

    move-result v2

    .line 68
    .local v2, "handleSuccess":Z
    invoke-virtual {p0, p1, v3, v4}, Lacj;->a(Lcom/iflytek/yd/speech/ViaAsrResult;Lacf;Lacf;)V

    goto :goto_0
.end method

.method protected abstract b(Lcom/iflytek/yd/speech/ViaAsrResult;Laau;Lacf;)Lacf;
.end method

.method protected b()Lacp;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lacj;->a:Lacp;

    return-object v0
.end method

.method protected abstract c(Lcom/iflytek/yd/speech/ViaAsrResult;Laau;Lacf;)Z
.end method
