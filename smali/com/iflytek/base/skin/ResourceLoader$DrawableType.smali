.class final enum Lcom/iflytek/base/skin/ResourceLoader$DrawableType;
.super Ljava/lang/Enum;
.source "ResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/skin/ResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DrawableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/base/skin/ResourceLoader$DrawableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

.field public static final enum color:Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

.field public static final enum image:Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

.field public static final enum stateList:Lcom/iflytek/base/skin/ResourceLoader$DrawableType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

    const-string/jumbo v1, "image"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;->image:Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

    .line 73
    new-instance v0, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

    const-string/jumbo v1, "color"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;->color:Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

    .line 74
    new-instance v0, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

    const-string/jumbo v1, "stateList"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;->stateList:Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

    sget-object v1, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;->image:Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;->color:Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;->stateList:Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;->$VALUES:[Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/base/skin/ResourceLoader$DrawableType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    const-class v0, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/base/skin/ResourceLoader$DrawableType;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/iflytek/base/skin/ResourceLoader$DrawableType;->$VALUES:[Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

    invoke-virtual {v0}, [Lcom/iflytek/base/skin/ResourceLoader$DrawableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/base/skin/ResourceLoader$DrawableType;

    return-object v0
.end method
