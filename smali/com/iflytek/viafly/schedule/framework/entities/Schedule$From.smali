.class public final enum Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;
.super Ljava/lang/Enum;
.source "Schedule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "From"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

.field public static final enum local:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

.field public static final enum pull:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

.field public static final enum push:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    const-string/jumbo v1, "local"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->local:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    .line 116
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    const-string/jumbo v1, "push"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->push:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    .line 117
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    const-string/jumbo v1, "pull"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->pull:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    .line 114
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->local:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->push:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->pull:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

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
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    const-class v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    return-object v0
.end method


# virtual methods
.method public isContentUnableEdited()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public isNotSpeechWhenTrigger()Z
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->push:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->pull:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRelatedWithGuide()Z
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->push:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->pull:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowPicWhenTrigger()Z
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->push:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpecialAddDesc()Z
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->push:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->pull:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
