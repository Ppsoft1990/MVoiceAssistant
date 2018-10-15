.class public final enum Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;
.super Ljava/lang/Enum;
.source "CmccAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/cmccauth/CmccAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

.field public static final enum idle:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

.field public static final enum running:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    new-instance v0, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    const-string/jumbo v1, "idle"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->idle:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    .line 106
    new-instance v0, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    const-string/jumbo v1, "running"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->running:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    sget-object v1, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->idle:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->running:Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->$VALUES:[Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

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
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    const-class v0, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->$VALUES:[Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    invoke-virtual {v0}, [Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/common/cmccauth/CmccAuthentication$AuthState;

    return-object v0
.end method
