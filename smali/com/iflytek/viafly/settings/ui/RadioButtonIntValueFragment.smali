.class public abstract Lcom/iflytek/viafly/settings/ui/RadioButtonIntValueFragment;
.super Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;
.source "RadioButtonIntValueFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/viafly/settings/ui/RadioButtonFragment",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/RadioButtonFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getValue()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 16
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/RadioButtonIntValueFragment;->bindKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/RadioButtonIntValueFragment;->defaultIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/RadioButtonIntValueFragment;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final saveValue(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 21
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/RadioButtonIntValueFragment;->bindKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;I)V

    .line 22
    return-void
.end method

.method protected bridge synthetic saveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/settings/ui/RadioButtonIntValueFragment;->saveValue(Ljava/lang/Integer;)V

    return-void
.end method
