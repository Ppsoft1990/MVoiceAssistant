.class public Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
.super Ljava/lang/Object;
.source "PersonalizedRingToneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->d:I

    .line 340
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->d:I

    .line 344
    iput p2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->e:I

    .line 345
    return-void
.end method

.method public constructor <init>(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;ZLjava/lang/String;)V
    .locals 1
    .param p1, "entity"    # Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    .param p2, "isSelected"    # Z
    .param p3, "inputWord"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->d:I

    .line 333
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .line 334
    iput-boolean p2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->b:Z

    .line 335
    iput-object p3, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->c:Ljava/lang/String;

    .line 336
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getRole()Ljava/lang/String;

    move-result-object v0

    .line 355
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 360
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    if-nez v2, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 363
    check-cast v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .line 364
    .local v0, "data":Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    if-eqz v2, :cond_0

    .line 368
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .line 369
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 370
    const/4 v1, 0x1

    goto :goto_0

    .line 372
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 377
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 378
    .local v0, "hashCode":I
    iget v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->d:I

    add-int/2addr v0, v1

    .line 379
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 382
    .end local v0    # "hashCode":I
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PersonalizedRingToneViewData [entity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", inputWord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
