.class public final enum Lcom/iflytek/common/permission/data/PermissionType;
.super Ljava/lang/Enum;
.source "PermissionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/common/permission/data/PermissionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/common/permission/data/PermissionType;

.field public static final enum FORBIDDEN:Lcom/iflytek/common/permission/data/PermissionType;

.field public static final enum PERMIT:Lcom/iflytek/common/permission/data/PermissionType;

.field public static final enum PROMPT:Lcom/iflytek/common/permission/data/PermissionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/iflytek/common/permission/data/PermissionType;

    const-string/jumbo v1, "FORBIDDEN"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/common/permission/data/PermissionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/permission/data/PermissionType;->FORBIDDEN:Lcom/iflytek/common/permission/data/PermissionType;

    .line 18
    new-instance v0, Lcom/iflytek/common/permission/data/PermissionType;

    const-string/jumbo v1, "PROMPT"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/common/permission/data/PermissionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/permission/data/PermissionType;->PROMPT:Lcom/iflytek/common/permission/data/PermissionType;

    .line 23
    new-instance v0, Lcom/iflytek/common/permission/data/PermissionType;

    const-string/jumbo v1, "PERMIT"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/common/permission/data/PermissionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/permission/data/PermissionType;->PERMIT:Lcom/iflytek/common/permission/data/PermissionType;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/common/permission/data/PermissionType;

    sget-object v1, Lcom/iflytek/common/permission/data/PermissionType;->FORBIDDEN:Lcom/iflytek/common/permission/data/PermissionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/common/permission/data/PermissionType;->PROMPT:Lcom/iflytek/common/permission/data/PermissionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/common/permission/data/PermissionType;->PERMIT:Lcom/iflytek/common/permission/data/PermissionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/common/permission/data/PermissionType;->$VALUES:[Lcom/iflytek/common/permission/data/PermissionType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/common/permission/data/PermissionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/iflytek/common/permission/data/PermissionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/permission/data/PermissionType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/common/permission/data/PermissionType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/iflytek/common/permission/data/PermissionType;->$VALUES:[Lcom/iflytek/common/permission/data/PermissionType;

    invoke-virtual {v0}, [Lcom/iflytek/common/permission/data/PermissionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/common/permission/data/PermissionType;

    return-object v0
.end method
