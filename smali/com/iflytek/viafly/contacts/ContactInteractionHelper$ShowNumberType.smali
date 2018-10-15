.class public final enum Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;
.super Ljava/lang/Enum;
.source "ContactInteractionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/contacts/ContactInteractionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShowNumberType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

.field public static final enum end_four_num_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

.field public static final enum front_three_num_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

.field public static final enum full_num_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

.field public static final enum prefix_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-instance v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    const-string/jumbo v1, "prefix_high_light"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->prefix_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    .line 88
    new-instance v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    const-string/jumbo v1, "front_three_num_high_light"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->front_three_num_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    .line 92
    new-instance v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    const-string/jumbo v1, "end_four_num_high_light"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->end_four_num_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    .line 96
    new-instance v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    const-string/jumbo v1, "full_num_high_light"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->full_num_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    .line 80
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    sget-object v1, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->prefix_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->front_three_num_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->end_four_num_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->full_num_high_light:Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->$VALUES:[Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

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
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    const-class v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->$VALUES:[Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/contacts/ContactInteractionHelper$ShowNumberType;

    return-object v0
.end method
