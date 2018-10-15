.class synthetic Lcom/iflytek/framework/business/components/SystemComponents$2;
.super Ljava/lang/Object;
.source "SystemComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/business/components/SystemComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$iflytek$common$cmccauth$entities$SimOperatorType:[I

.field static final synthetic $SwitchMap$com$iflytek$yd$system$SimState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 439
    invoke-static {}, Lcom/iflytek/yd/system/SimState;->values()[Lcom/iflytek/yd/system/SimState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/iflytek/framework/business/components/SystemComponents$2;->$SwitchMap$com$iflytek$yd$system$SimState:[I

    :try_start_0
    sget-object v0, Lcom/iflytek/framework/business/components/SystemComponents$2;->$SwitchMap$com$iflytek$yd$system$SimState:[I

    sget-object v1, Lcom/iflytek/yd/system/SimState;->ABSENT:Lcom/iflytek/yd/system/SimState;

    invoke-virtual {v1}, Lcom/iflytek/yd/system/SimState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    .line 422
    :goto_0
    invoke-static {}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->values()[Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/iflytek/framework/business/components/SystemComponents$2;->$SwitchMap$com$iflytek$common$cmccauth$entities$SimOperatorType:[I

    :try_start_1
    sget-object v0, Lcom/iflytek/framework/business/components/SystemComponents$2;->$SwitchMap$com$iflytek$common$cmccauth$entities$SimOperatorType:[I

    sget-object v1, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_MOBILE:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/iflytek/framework/business/components/SystemComponents$2;->$SwitchMap$com$iflytek$common$cmccauth$entities$SimOperatorType:[I

    sget-object v1, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_UNICOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/iflytek/framework/business/components/SystemComponents$2;->$SwitchMap$com$iflytek$common$cmccauth$entities$SimOperatorType:[I

    sget-object v1, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_TELECOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    .line 439
    :catch_3
    move-exception v0

    goto :goto_0
.end method
