.class synthetic Lcom/iflytek/base/skin/customView/XProgressView$2;
.super Ljava/lang/Object;
.source "XProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/skin/customView/XProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$iflytek$base$skin$customView$XProgressView$ProgressState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 223
    invoke-static {}, Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;->values()[Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/iflytek/base/skin/customView/XProgressView$2;->$SwitchMap$com$iflytek$base$skin$customView$XProgressView$ProgressState:[I

    :try_start_0
    sget-object v0, Lcom/iflytek/base/skin/customView/XProgressView$2;->$SwitchMap$com$iflytek$base$skin$customView$XProgressView$ProgressState:[I

    sget-object v1, Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;->idle:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/iflytek/base/skin/customView/XProgressView$2;->$SwitchMap$com$iflytek$base$skin$customView$XProgressView$ProgressState:[I

    sget-object v1, Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;->waiting:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/iflytek/base/skin/customView/XProgressView$2;->$SwitchMap$com$iflytek$base$skin$customView$XProgressView$ProgressState:[I

    sget-object v1, Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;->finishing:Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XProgressView$ProgressState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
