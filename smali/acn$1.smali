.class Lacn$1;
.super Ljava/lang/Object;
.source "MessageResultHandler.java"

# interfaces
.implements Lacr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacn;


# direct methods
.method constructor <init>(Lacn;)V
    .locals 0
    .param p1, "this$0"    # Lacn;

    .prologue
    .line 592
    iput-object p1, p0, Lacn$1;->a:Lacn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 3
    .param p1, "pSimCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 614
    iget-object v2, p0, Lacn$1;->a:Lacn;

    invoke-virtual {v2}, Lacn;->b()Lacp;

    move-result-object v2

    invoke-interface {v2}, Lacp;->getScenceDataCache()Lacf;

    move-result-object v0

    .line 615
    .local v0, "lastData":Lacf;
    if-eqz v0, :cond_0

    instance-of v2, v0, Laci;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 616
    check-cast v1, Laci;

    .line 617
    .local v1, "messageOperationData":Laci;
    invoke-virtual {v1, p1}, Laci;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 619
    .end local v1    # "messageOperationData":Laci;
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "pContent"    # Ljava/lang/String;

    .prologue
    .line 605
    iget-object v2, p0, Lacn$1;->a:Lacn;

    invoke-virtual {v2}, Lacn;->b()Lacp;

    move-result-object v2

    invoke-interface {v2}, Lacp;->getScenceDataCache()Lacf;

    move-result-object v0

    .line 606
    .local v0, "lastData":Lacf;
    if-eqz v0, :cond_0

    instance-of v2, v0, Laci;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 607
    check-cast v1, Laci;

    .line 608
    .local v1, "messageOperationData":Laci;
    invoke-virtual {v1, p1}, Laci;->c(Ljava/lang/String;)V

    .line 610
    .end local v1    # "messageOperationData":Laci;
    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p1, "pContactItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    iget-object v2, p0, Lacn$1;->a:Lacn;

    invoke-virtual {v2}, Lacn;->b()Lacp;

    move-result-object v2

    invoke-interface {v2}, Lacp;->getScenceDataCache()Lacf;

    move-result-object v0

    .line 597
    .local v0, "lastData":Lacf;
    if-eqz v0, :cond_0

    instance-of v2, v0, Laci;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 598
    check-cast v1, Laci;

    .line 599
    .local v1, "messageOperationData":Laci;
    invoke-virtual {v1, p1}, Laci;->b(Ljava/util/List;)V

    .line 601
    .end local v1    # "messageOperationData":Laci;
    :cond_0
    return-void
.end method
