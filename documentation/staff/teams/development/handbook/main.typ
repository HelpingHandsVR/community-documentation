
#import "../../../../../universal/templates/plateau.typ": template

#set document(
    title: "Helping Hands Development Team Handbook",
    description: "Handbook detailing the responsibilities and expectations of the Development Team at Helping Hands.",
    keywords: (
        "Helping Hands", "Development Team", "Handbook", "Reference", "Guidelines"
    ),

    author: "Devon (scarlet.cafe) R.",
    date: datetime(year: 2026, month: 3, day: 1),
)

#show: template.with(
    title: "Helping Hands",
    subtitle: "Development Team Handbook",
)

#let fixme = text(fill: red)[#sym.hash FIXME]

= Introduction

Welcome to the Helping Hands Development Team handbook. This handbook is intended as a guideline document introducing new and existing staff to the functions, responsibilities, and expectations of the Development Team.

Our community is designed to bridge Deaf and hearing communities through the use of technology. It is thus important that we make technology work for us and the community.

Your area of technical expertise, as well as your level of proficiency in that area, will vary between you and your fellow team members. This is OK, and where possible you should see it as an opportunity to both contribute in ways others may not be able to, and learn and improve in areas you may not have otherwise expected to.

If you run into problems or are uncertain of how to proceed, you are always welcome to seek guidance within the `#dev-team-chat`.

By being selected to be part of this team, it means that you have received a certain amount of trust, and that we believe you to both understand and be able to make practical contributions towards the goals of Helping Hands. As a result, it is expected you may already inherently understand many of the principles we work by, and the expectations laid upon you.

This document primarily serves to codify many of the principles typically inferred or left unspoken, and you are free to scan through the document and return to any sections of interest at a later time if necessary. You may not need to read or understand the full content to do your work effectively. However, if you do find any sections or elements confusing, please make these concerns known as it can help refine the document for future readers.

Thank you for taking the time to read this handbook and for being part of our team.

= Philosophy of Development

This section covers abstract concepts that relate to your development work at Helping Hands. Fine implementation details and the more pragmatic aspects of design will be covered in other sections #sym.dash the goal of this section is centered more around the ethical principles you should apply in the development of your projects.

- *Access*

    One of the core issues encountered by Deaf people in interactions with society is the issue of access. While lack of accommodations for hearing loss or difficulty often manifests in human factors, barriers to access also result from implementations of technology.

    In general, it is expected that you will design your projects to pay due attention to the issues of access. Our community is diverse, and their feedback will be one of the most valuable resources in achieving these goals.

    It is important to realize that access does not just mean access for the Deaf community. There are many other forms of limitations to access that we can inadvertently cause, and we should not let our focus on Deaf issues, hearing loss, and sign language allow us to neglect other access requirements, such as motor conditions, sight loss, sensory impairment, and language disabilities.

    While it may not be possible to always engineer a system that works for every person, considering a broad range of needs that the people affected by your technology may have is important in ensuring that we serve as an unbiased representative of access.

- *Societal Impact*

    While Helping Hands is, in the grand scope of things, a small community in a niche subject area, it is perhaps because we are unique in our positioning that we have to exercise caution about the decisions we make.

    There exist communities, including Deaf communities, that have reason to be skeptical about the positioning of Helping Hands, and may be apprehensive about whether we represent a positive effect on the image of the Deaf community and sign language.

    Indeed, for the majority of our users, Helping Hands may be the first or only time they interact with Deaf people and the Deaf community as a whole. We must be careful that we impart respectful and reasonable values, and that we do not inadvertently contribute to misconceptions or the erasure of Deaf culture outside of the walls of our community.

    There will always be some amount of skepticism around new technology and the place it takes within people's lives, but by being careful in our execution we hope to set a rare example of how Helping Hands helps to contribute to the world more than it detriments it.

- *Commercial Positioning*

    Helping Hands is comprised entirely of volunteers, such as yourself. We are not a business, and we are also not a registered charity. The position this puts us in leaves us with implications from both a legal and ethical standpoint.

    Where possible, we should decouple any form of commercial usage or goals from the Helping Hands community. This means that we should never handle money internally, and we should not employ monetization or financial systems in the projects we develop under our name.

    Your participation in Helping Hands does not prevent you from developing your own work for commercial purposes. However, such work should not be under the Helping Hands name. Helping Hands is about access and goodwill, and there should never be any monetary incentives or profit involved in the work we directly perform under our team.

= Draft section

This section is not finished and is here for layout and development purposes. #fixme
