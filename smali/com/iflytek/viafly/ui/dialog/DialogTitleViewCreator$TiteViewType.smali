.class public final enum Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;
.super Ljava/lang/Enum;
.source "DialogTitleViewCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TiteViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;

.field public static final enum CustomTitleView:Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;

    const-string/jumbo v1, "CustomTitleView"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;->CustomTitleView:Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;

    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;->CustomTitleView:Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;->$VALUES:[Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;->$VALUES:[Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;

    return-object v0
.end method
