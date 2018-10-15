.class public final enum Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;
.super Ljava/lang/Enum;
.source "HomeLifeModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

.field public static final enum life_more:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

.field public static final enum life_music:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

.field public static final enum life_plug:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

.field public static final enum life_smart:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

.field public static final enum life_speak:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    const-string/jumbo v1, "life_speak"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;->life_speak:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    new-instance v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    const-string/jumbo v1, "life_smart"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;->life_smart:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    new-instance v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    const-string/jumbo v1, "life_music"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;->life_music:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    new-instance v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    const-string/jumbo v1, "life_plug"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;->life_plug:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    new-instance v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    const-string/jumbo v1, "life_more"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;->life_more:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    sget-object v1, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;->life_speak:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;->life_smart:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;->life_music:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;->life_plug:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;->life_more:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    aput-object v1, v0, v6

    sput-object v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;->$VALUES:[Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;->$VALUES:[Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    return-object v0
.end method
