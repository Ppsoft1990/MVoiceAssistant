.class Ladm$2;
.super Ljava/lang/Object;
.source "SpecificVoiceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladm;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ladm;


# direct methods
.method constructor <init>(Ladm;I)V
    .locals 0
    .param p1, "this$0"    # Ladm;

    .prologue
    .line 103
    iput-object p1, p0, Ladm$2;->b:Ladm;

    iput p2, p0, Ladm$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v1, p0, Ladm$2;->b:Ladm;

    invoke-static {v1}, Ladm;->a(Ladm;)Ladj;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Ladm$2;->b:Ladm;

    invoke-static {v1}, Ladm;->b(Ladm;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Ladm$2;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    .line 108
    invoke-virtual {v1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->d()Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    move-result-object v0

    .line 109
    .local v0, "status":Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;
    const-string/jumbo v1, "SpecificVoiceAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MethodName: onClick data\uff1a [status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 110
    invoke-virtual {v0}, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_INIT:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_ERROR:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    .line 112
    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    :cond_0
    iget-object v1, p0, Ladm$2;->b:Ladm;

    invoke-static {v1}, Ladm;->a(Ladm;)Ladj;

    move-result-object v1

    iget v2, p0, Ladm$2;->a:I

    invoke-interface {v1, v2}, Ladj;->a(I)V

    .line 122
    .end local v0    # "status":Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;
    :cond_1
    :goto_0
    return-void

    .line 114
    .restart local v0    # "status":Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;
    :cond_2
    sget-object v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    if-ne v1, v0, :cond_3

    .line 115
    iget-object v1, p0, Ladm$2;->b:Ladm;

    invoke-static {v1}, Ladm;->a(Ladm;)Ladj;

    move-result-object v1

    iget v2, p0, Ladm$2;->a:I

    invoke-interface {v1, v2}, Ladj;->b(I)V

    goto :goto_0

    .line 116
    :cond_3
    sget-object v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_PAUSED:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    if-ne v1, v0, :cond_4

    .line 117
    iget-object v1, p0, Ladm$2;->b:Ladm;

    invoke-static {v1}, Ladm;->a(Ladm;)Ladj;

    move-result-object v1

    iget v2, p0, Ladm$2;->a:I

    invoke-interface {v1, v2}, Ladj;->c(I)V

    goto :goto_0

    .line 118
    :cond_4
    sget-object v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    if-ne v1, v0, :cond_1

    .line 119
    iget-object v1, p0, Ladm$2;->b:Ladm;

    invoke-static {v1}, Ladm;->a(Ladm;)Ladj;

    move-result-object v1

    iget v2, p0, Ladm$2;->a:I

    invoke-interface {v1, v2}, Ladj;->d(I)V

    goto :goto_0
.end method
