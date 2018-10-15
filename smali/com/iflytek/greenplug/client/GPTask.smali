.class public Lcom/iflytek/greenplug/client/GPTask;
.super Ljava/lang/Object;
.source "GPTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;,
        Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;
    }
.end annotation


# instance fields
.field private mTaskParam:[Ljava/lang/Object;

.field private mTaskResult:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

.field private mTaskType:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;


# direct methods
.method constructor <init>(Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "taskType"    # Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;
    .param p2, "taskParam"    # [Ljava/lang/Object;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Lcom/iflytek/greenplug/client/GPTask;->setTaskType(Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;)V

    .line 65
    invoke-virtual {p0, p2}, Lcom/iflytek/greenplug/client/GPTask;->setTaskParam([Ljava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->UNKNOWN_INIT:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {p0, v0}, Lcom/iflytek/greenplug/client/GPTask;->setTaskResult(Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;)V

    .line 67
    return-void
.end method

.method constructor <init>(Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;[Ljava/lang/Object;Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;)V
    .locals 0
    .param p1, "taskType"    # Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;
    .param p2, "taskParam"    # [Ljava/lang/Object;
    .param p3, "taskResult"    # Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p0, p1}, Lcom/iflytek/greenplug/client/GPTask;->setTaskType(Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;)V

    .line 71
    invoke-virtual {p0, p2}, Lcom/iflytek/greenplug/client/GPTask;->setTaskParam([Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0, p3}, Lcom/iflytek/greenplug/client/GPTask;->setTaskResult(Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;)V

    .line 73
    return-void
.end method


# virtual methods
.method public getTaskParam()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iflytek/greenplug/client/GPTask;->mTaskParam:[Ljava/lang/Object;

    return-object v0
.end method

.method public getTaskResult()Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/iflytek/greenplug/client/GPTask;->mTaskResult:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    return-object v0
.end method

.method public getTaskType()Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/iflytek/greenplug/client/GPTask;->mTaskType:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    return-object v0
.end method

.method public setTaskParam([Ljava/lang/Object;)V
    .locals 0
    .param p1, "mTaskParam"    # [Ljava/lang/Object;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/iflytek/greenplug/client/GPTask;->mTaskParam:[Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public setTaskResult(I)V
    .locals 1
    .param p1, "taskResultCODE"    # I

    .prologue
    .line 106
    sget-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->UNKNOWN_INIT:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 107
    .local v0, "taskResult":Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;
    sparse-switch p1, :sswitch_data_0

    .line 157
    :goto_0
    iput-object v0, p0, Lcom/iflytek/greenplug/client/GPTask;->mTaskResult:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 158
    return-void

    .line 109
    :sswitch_0
    sget-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->UNKNOWN_INIT:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 110
    goto :goto_0

    .line 113
    :sswitch_1
    sget-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->UNKNOWN_DELAY:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 114
    goto :goto_0

    .line 117
    :sswitch_2
    sget-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_CALL_IN_MAINTHREAD:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 118
    goto :goto_0

    .line 121
    :sswitch_3
    sget-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_TIMEOUT:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 122
    goto :goto_0

    .line 125
    :sswitch_4
    sget-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_NO_SUCH_PLUGIN:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 126
    goto :goto_0

    .line 129
    :sswitch_5
    sget-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_NO_SUPPORTED_ABI:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 130
    goto :goto_0

    .line 133
    :sswitch_6
    sget-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_NO_REQUESTED_PERMISSION:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 134
    goto :goto_0

    .line 137
    :sswitch_7
    sget-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_ALREADY_EXISTS:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 138
    goto :goto_0

    .line 141
    :sswitch_8
    sget-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_INVALID_APK:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 142
    goto :goto_0

    .line 145
    :sswitch_9
    sget-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 146
    goto :goto_0

    .line 149
    :sswitch_a
    sget-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->SUCCESS:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 150
    goto :goto_0

    .line 153
    :sswitch_b
    sget-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->SUCCESS_PARTIAL:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    goto :goto_0

    .line 107
    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_0
        -0x63 -> :sswitch_1
        -0x8 -> :sswitch_2
        -0x7 -> :sswitch_3
        -0x6 -> :sswitch_4
        -0x5 -> :sswitch_5
        -0x4 -> :sswitch_6
        -0x3 -> :sswitch_7
        -0x2 -> :sswitch_8
        -0x1 -> :sswitch_9
        0x0 -> :sswitch_a
        0x1 -> :sswitch_b
    .end sparse-switch
.end method

.method public setTaskResult(Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;)V
    .locals 0
    .param p1, "taskResult"    # Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/iflytek/greenplug/client/GPTask;->mTaskResult:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 97
    return-void
.end method

.method public setTaskType(Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;)V
    .locals 0
    .param p1, "mTaskType"    # Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/iflytek/greenplug/client/GPTask;->mTaskType:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    .line 81
    return-void
.end method
