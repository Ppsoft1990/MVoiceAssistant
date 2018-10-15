.class public final enum Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;
.super Ljava/lang/Enum;
.source "BlcProtocolCmdType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum GetSid:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum UseLog:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum anonlogin:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum config:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum downres:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum errorLog:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum feedback:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum forward:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum getabout:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum getadapt:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum getconfig:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum getcustomize:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum getgreeting:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum gethotword:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum getrcmdctg:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum getrecommend:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum getrtnews:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum getskin:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum gettokenid:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum login:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum logoff:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum notice:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum oplog:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum querytokenid:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum register:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum uplog:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum upmd:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum uprecord:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

.field public static final enum version:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "config"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->config:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 5
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "login"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->login:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 6
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "register"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->register:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 7
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "GetSid"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->GetSid:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 8
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "version"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->version:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 9
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "feedback"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->feedback:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 10
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "forward"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->forward:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 11
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "UseLog"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->UseLog:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 12
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "errorLog"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->errorLog:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 13
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "uplog"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->uplog:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 15
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "upmd"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->upmd:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 16
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "oplog"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->oplog:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 17
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "getrecommend"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->getrecommend:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 18
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "getcustomize"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->getcustomize:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 19
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "getabout"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->getabout:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 20
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "getskin"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->getskin:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 21
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "gethotword"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->gethotword:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 22
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "logoff"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->logoff:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 23
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "downres"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->downres:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 24
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "getgreeting"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->getgreeting:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 26
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "getrtnews"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->getrtnews:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 28
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "querytokenid"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->querytokenid:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 30
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "gettokenid"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->gettokenid:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 32
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "notice"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->notice:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 34
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "getadapt"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->getadapt:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 36
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "uprecord"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->uprecord:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 38
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "getconfig"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->getconfig:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 40
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "getrcmdctg"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->getrcmdctg:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 42
    new-instance v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    const-string/jumbo v1, "anonlogin"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->anonlogin:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    .line 3
    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    sget-object v1, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->config:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->login:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->register:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->GetSid:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->version:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->feedback:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->forward:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->UseLog:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->errorLog:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->uplog:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->upmd:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->oplog:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->getrecommend:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->getcustomize:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->getabout:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->getskin:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->gethotword:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->logoff:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->downres:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->getgreeting:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->getrtnews:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->querytokenid:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->gettokenid:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->notice:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->getadapt:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->uprecord:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->getconfig:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->getrcmdctg:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->anonlogin:Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->$VALUES:[Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->$VALUES:[Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/blc/operation/impl/BlcProtocolCmdType;

    return-object v0
.end method
