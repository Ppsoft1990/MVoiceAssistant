.class public abstract Lcom/iflytek/viafly/settings/ui/RadioButtonIndexFragment;
.super Lcom/iflytek/viafly/settings/ui/RadioButtonIntValueFragment;
.source "RadioButtonIndexFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/RadioButtonIntValueFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getValueItems()[Ljava/lang/Integer;
    .locals 5

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/RadioButtonIndexFragment;->getSummaryItems()[Ljava/lang/String;

    move-result-object v2

    .line 13
    .local v2, "summaryItems":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-gtz v4, :cond_2

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 22
    :cond_1
    return-object v3

    .line 17
    :cond_2
    array-length v4, v2

    new-array v3, v4, [Ljava/lang/Integer;

    .line 18
    .local v3, "valueItems":[Ljava/lang/Integer;
    array-length v1, v2

    .line 19
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic getValueItems()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/RadioButtonIndexFragment;->getValueItems()[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
