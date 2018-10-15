.class synthetic Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$1;
.super Ljava/lang/Object;
.source "DialogTitleViewCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$iflytek$viafly$ui$dialog$DialogTitleViewCreator$TiteViewType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    invoke-static {}, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;->values()[Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$1;->$SwitchMap$com$iflytek$viafly$ui$dialog$DialogTitleViewCreator$TiteViewType:[I

    :try_start_0
    sget-object v0, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$1;->$SwitchMap$com$iflytek$viafly$ui$dialog$DialogTitleViewCreator$TiteViewType:[I

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;->CustomTitleView:Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
