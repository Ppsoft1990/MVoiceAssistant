.class public final enum Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;
.super Ljava/lang/Enum;
.source "FoodCardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/food/FoodCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocateStateEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

.field public static final enum LocatingFail:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

.field public static final enum init:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

.field public static final enum locating:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

.field public static final enum noNetWork:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

.field public static final enum success:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    const-string/jumbo v1, "init"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;->init:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    .line 41
    new-instance v0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    const-string/jumbo v1, "noNetWork"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;->noNetWork:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    .line 42
    new-instance v0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    const-string/jumbo v1, "locating"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;->locating:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    .line 43
    new-instance v0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    const-string/jumbo v1, "LocatingFail"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;->LocatingFail:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    .line 44
    new-instance v0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    const-string/jumbo v1, "success"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;->success:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    sget-object v1, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;->init:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;->noNetWork:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;->locating:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;->LocatingFail:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;->success:Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    aput-object v1, v0, v6

    sput-object v0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;->$VALUES:[Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;->$VALUES:[Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/homepage/food/FoodCardPresenter$LocateStateEnum;

    return-object v0
.end method
