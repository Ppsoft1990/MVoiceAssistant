.class public final enum Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;
.super Ljava/lang/Enum;
.source "UemUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/ssoutil/UemUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SMSResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

.field public static final enum FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

.field public static final enum SUCCESS:Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;->SUCCESS:Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    new-instance v0, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    const-string/jumbo v1, "FAIL"

    invoke-direct {v0, v1, v3}, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    sget-object v1, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;->SUCCESS:Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    aput-object v1, v0, v3

    sput-object v0, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;->$VALUES:[Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;
    .locals 1

    const-class v0, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    return-object v0
.end method

.method public static values()[Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;
    .locals 1

    sget-object v0, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;->$VALUES:[Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    invoke-virtual {v0}, [Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    return-object v0
.end method
